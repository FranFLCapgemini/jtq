using System.Linq.Expressions;
using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Service
{
    /// <summary>
    /// PruebaService interface
    /// </summary>
    public interface IPruebaService
    {
        /// <summary>
        /// GetTodo
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        Task<IEnumerable<PruebaDto>> GetPrueba(Expression<Func<Prueba, bool>> predicate = null);
        /// <summary>
        /// CreatePrueba
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        Task<Prueba> CreatePrueba(string name);
    }
}