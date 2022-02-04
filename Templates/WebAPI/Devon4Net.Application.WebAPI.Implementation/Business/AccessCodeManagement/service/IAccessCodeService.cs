using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Service
{
    /// <summary>
    /// Access code interface
    /// </summary>
    
    public interface IAccessCodeService
    {
        /// <summary>
        /// Search access code
        /// </summary>    
        Task<AccessCode> SearchAccessCodebyId(string id);

        /// <summary>
        /// Create access code
        /// </summary>    
        Task<AccessCodeDto> CreateAccessCode(string idvisitor, string idqueue);
        
        /// <summary>
        /// Delete Access Code
        /// </summary>    
        Task<string> DeleteAccessCode(string id);

        ///<Summary>
        ///Search visitor access codes
        ///</Summary>
        Task<IList<AccessCode>> SearchVisitorAccessCodes(string idvisitor);
    }
}