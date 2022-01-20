using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces
{
    ///<Summary>
    ///Access code repository interface
    ///</Summary>

    public interface IAccessCodeRepository
    {
        ///<Summary>
        ///Search access code
        ///</Summary>
        Task<AccessCode> SearchAccessCodebyIdaccesscode(String TicketNumber);

        ///<Summary>
        ///Delete acces code
        ///</Summary>
        Task<string> DeleteAccessCode(String accesscode);
        
        ///<Summary>
        ///Create access code
        ///</Summary>
        Task<AccessCode> CreateAccessCode(string idvisitor, string queue);

        ///<Summary>
        ///Any access code
        ///</Summary>
        Task<bool> AnyAccessCode(string queueid, string visitorid);
    }
}