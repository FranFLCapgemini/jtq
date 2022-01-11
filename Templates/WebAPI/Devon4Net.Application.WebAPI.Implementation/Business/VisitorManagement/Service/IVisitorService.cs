using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Service
{
    /// <summary>
    /// TodoService interface
    /// </summary>
    public interface IVisitorService
    {
        /// <summary>
        /// CreateVisitor
        /// </summary>
        /// <param name="username"></param>
        /// <param name="name"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        Task<Visitor> CreateVisitor(String username, String name, String pass);
        
        ///<Summary>
        ///Login visitor
        ///</Summary>
        Task<bool> Login(String username, String pass);
    }
    
}