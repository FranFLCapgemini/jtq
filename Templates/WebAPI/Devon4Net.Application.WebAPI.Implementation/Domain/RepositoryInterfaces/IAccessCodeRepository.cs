using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Domain.UnitOfWork.Repository;

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
        Task<AccessCode> SearchAccessCode(String TicketNumber);

        ///<Summary>
        ///Delete acces code
        ///</Summary>
        Task<string> DeleteAccessCode(String accesscode);
        
        ///<Summary>
        ///Create access code
        ///</Summary>
        Task<AccessCode> CreateAccessCode(string idvisitor, string queue);
    }
}