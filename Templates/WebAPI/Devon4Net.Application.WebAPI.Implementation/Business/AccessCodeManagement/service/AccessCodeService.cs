using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Converters;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

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
        /// <param name="idaccesscode"></param>
        public Task<AccessCode> SearchAccessCodebyIdAccessCode(string idaccesscode)
        {
            Devon4NetLogger.Debug("SearchAccessCode method from AccessCodeService");
            return _AccessCodeRepository.SearchAccessCodebyIdaccesscode(idaccesscode);
        }
        
        /// <summary>
        /// Access Code Service Implementation
        /// </summary>
        /// <param name="idvisitor"></param>
        /// <param name="queue"></param>
        public async Task<AccessCodeDto> CreateAccessCode(string idvisitor, string queue)
        {
            Devon4NetLogger.Debug("CreateAccessCode method from AccesCodeService");
            //If visitor doesn't have any code
            if (!await _AccessCodeRepository.AnyAccessCode(idvisitor, queue))
            {
                var accesscode = await _AccessCodeRepository.CreateAccessCode(idvisitor, queue).ConfigureAwait(false);
                await _QueueRepository.IncrementCustomers(queue);
                return AccessCodeConverter.ModelToDto(accesscode);
            }
            return null;
        }
        
        /// <summary>
        /// Access Code method from access code service
        /// </summary>
        /// <param name="idaccesscode"></param>
        public async Task<string> DeleteAccessCode(string idaccesscode)
        {
            Devon4NetLogger.Debug($"DeleteAccessCode method from service DeleteAccessCode with id: {idaccesscode}");
            var ac = await _AccessCodeRepository.SearchAccessCodebyIdaccesscode(idaccesscode);
            if(ac != null)
                await _QueueRepository.DecrementCustomers(ac.QueueId).ConfigureAwait(false);
            return await _AccessCodeRepository.DeleteAccessCode(idaccesscode).ConfigureAwait(false);
        }
    }
}