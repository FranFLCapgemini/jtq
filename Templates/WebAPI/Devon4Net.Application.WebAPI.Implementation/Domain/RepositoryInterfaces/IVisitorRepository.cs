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
        Task<Visitor> CreateVisitor(String username, String name, String pass);

        ///<Summary>
        ///Login visitor
        ///</Summary>
        Task<bool> Login(String username, String pass);
    }
}