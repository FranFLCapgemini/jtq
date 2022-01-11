using System.Linq.Expressions;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Domain.UnitOfWork.Repository;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces
{
    /// <summary>
    /// jtq repository interface
    /// </summary>
    public interface IjtqRepository : IRepository<Prueba>
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        Task<IList<Prueba>> GetPrueba(Expression<Func<Prueba, bool>> predicate = null);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nombre"></param>
        /// <returns></returns>
        Task<Prueba> CreatePrueba(string nombre);        
    }
}
