using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Domain.UnitOfWork.Repository;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces
{
    ///<Summary>
    ///Visitor repository interface
    ///</Summary>
    public interface IVisitorRepository : IRepository<Visitor>
    {
        ///<Summary>
        ///Create visitor
        ///</Summary>
        Task<Visitor> CreateVisitor(string username, string name, string pass, string tlf, bool acceptedCommercial, bool acceptedTerms);

        ///<Summary>
        ///Login visitor
        ///</Summary>
        Task<bool> Login(String username, String pass);
    }
}