using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.service
{
    /// <summary>
    /// Access code interface
    /// </summary>
    
    public interface IAccessCodeService
    {
        /// <summary>
        /// Search access code
        /// </summary>    
        Task<AccessCode> SearchAccessCode(string idaccesscode);

        /// <summary>
        /// Create access code
        /// </summary>    
        Task<AccessCodeDto> CreateAccessCode(string idvisitor, string idqueue);
        
        /// <summary>
        /// Delete Access Code
        /// </summary>    
        Task<string> DeleteAccessCode(String idaccesscode);
    }
}