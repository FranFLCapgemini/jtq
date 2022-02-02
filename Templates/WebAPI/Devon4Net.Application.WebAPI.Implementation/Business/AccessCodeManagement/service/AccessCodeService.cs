using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Converters;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Exceptions;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.service
{
    /// <summary>
    /// Access Code Service Implementation
    /// </summary>
    public class AccessCodeService : Service<JtqContext>, IAccessCodeService
    {
        private readonly IAccessCodeRepository _AccessCodeRepository;
        private readonly IQueueRepository _QueueRepository;
        
        /// <summary>
        /// Access Code Service Implementation
        /// </summary>
        /// <param name="uoW"></param>
        public AccessCodeService(IUnitOfWork<JtqContext> uoW) : base(uoW)
        {
            _AccessCodeRepository = uoW.Repository<IAccessCodeRepository>();
            _QueueRepository = uoW.Repository<IQueueRepository>();
        }
        
        /// <summary>
        /// Search Access Code Service
        /// </summary>
        /// <param name="id"></param>
        public Task<AccessCode> SearchAccessCodebyId(string id)
        {
            if (string.IsNullOrWhiteSpace(id))
            {
                throw new NullOrWhiteSpaceArgument("Null or white space argument");
            }
            Devon4NetLogger.Debug("SearchAccessCode method from AccessCodeService");
            return _AccessCodeRepository.SearchAccessCodebyId(id);
        }
        
        /// <summary>
        /// Create Access Code Service Implementation
        /// </summary>
        /// <param name="idvisitor"></param>
        /// <param name="queue"></param>
        public async Task<AccessCodeDto> CreateAccessCode(string idvisitor, string queue)
        {
            if (string.IsNullOrWhiteSpace(idvisitor)||string.IsNullOrWhiteSpace(queue))
            {
                throw new NullOrWhiteSpaceArgument("Null or white space arguments");
            }
            Devon4NetLogger.Debug("CreateAccessCode method from AccesCodeService");
            //If visitor doesn't have any code
            if (!await _AccessCodeRepository.AnyAccessCode(idvisitor, queue))
            {
                var accesscode = await _AccessCodeRepository.CreateAccessCode(idvisitor, queue).ConfigureAwait(false);
                await _QueueRepository.IncrementCustomers(queue).ConfigureAwait(false);
                return AccessCodeConverter.ModelToDto(accesscode);
            }
            throw new AlreadyHasCodeException($"Visitor already has access code in {queue} queue");
        }
        
        /// <summary>
        /// Delete Access Code method from access code service
        /// </summary>
        /// <param name="idaccesscode"></param>
        public async Task<string> DeleteAccessCode(string idaccesscode)
        {
            if (string.IsNullOrWhiteSpace(idaccesscode))
            {
                throw new NullOrWhiteSpaceArgument("Null or white space argument");
            }
            Devon4NetLogger.Debug($"DeleteAccessCode method from service DeleteAccessCode with id: {idaccesscode}");
            var ac = await _AccessCodeRepository.SearchAccessCodebyId(idaccesscode);
            if(ac != null)
                await _QueueRepository.DecrementCustomers(ac.QueueId).ConfigureAwait(false);
            return await _AccessCodeRepository.DeleteAccessCode(idaccesscode).ConfigureAwait(false);
        }

        /// <summary>
        /// Search Visitor Acess Codes from AccessCodeService
        /// </summary>
        /// <param name="idvisitor"></param>
        public async Task<IList<AccessCode>> SearchVisitorAccessCodes(string idvisitor)
        {
            if (string.IsNullOrWhiteSpace(idvisitor))
            {
                throw new NullOrWhiteSpaceArgument("Null or white space argument");
            }
            Devon4NetLogger.Debug("SearchVisitorAccessCodes method from AccessCode Service");
            return await _AccessCodeRepository.SearchVisitorAccessCodes(idvisitor).ConfigureAwait(false);
        }
    }
}