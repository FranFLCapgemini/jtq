using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Converters;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.service
{
    /// <summary>
    /// Access Code Service Implementation
    /// </summary>
    public class AccessCodeService : Service<JtqContext>, IAccessCodeService
    {
        private readonly IAccessCodeRepository _AccessCodeRepository;
        
        /// <summary>
        /// Access Code Service Implementation
        /// </summary>
        /// <param name="uoW"></param>
        public AccessCodeService(IUnitOfWork<JtqContext> uoW) : base(uoW)
        {
            _AccessCodeRepository = uoW.Repository<IAccessCodeRepository>();
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
            var accesscode = await _AccessCodeRepository.CreateAccessCode(idvisitor, queue).ConfigureAwait(false);
            return AccessCodeConverter.ModelToDto(accesscode);
        }
        
        /// <summary>
        /// Access Code method from access code service
        /// </summary>
        /// <param name="idaccesscode"></param>
        public async Task<string> DeleteAccessCode(string idaccesscode)
        {
            Devon4NetLogger.Debug($"DeleteAccessCode method from service DeleteAccessCode with id: {idaccesscode}");

            return await _AccessCodeRepository.DeleteAccessCode(idaccesscode).ConfigureAwait(false);
        }
    }
}