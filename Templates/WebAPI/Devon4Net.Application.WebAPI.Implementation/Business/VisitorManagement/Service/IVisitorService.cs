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
        /// <param name="tlf"></param>
        /// <param name="acceptedCommercial"></param>
        /// <param name="acceptedTerms"></param>
        /// <returns></returns>
        Task<Visitor> CreateVisitor(string username, string name, string pass, string tlf, bool acceptedCommercial, bool acceptedTerms);
        
        ///<Summary>
        ///Login visitor
        ///</Summary>
        Task<bool> Login(String username, String pass);
    }
    
}