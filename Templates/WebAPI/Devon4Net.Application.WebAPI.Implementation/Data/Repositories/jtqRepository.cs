using System.Linq.Expressions;
using Devon4Net.Domain.UnitOfWork.Repository;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Data.Repositories
{
    /// <summary>
    /// Repository implementation for jtq
    /// </summary>
    public class JtqRepository : Repository<Prueba>, IjtqRepository
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="context"></param>
        public JtqRepository(JtqContext context) : base(context)
        {
        }

        /// <summary>
        /// Get method
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        public Task<IList<Prueba>> GetPrueba(Expression<Func<Prueba, bool>> predicate = null)
        {
            return Get(predicate);
        }
        /// <summary>
        /// CreatePrueba method
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public Task<Prueba> CreatePrueba(string name)
        {
            Devon4NetLogger.Debug($"create method from repository jtqService with value : {name}");
            var prueba = new Prueba {Nombre = name, Id = Guid.NewGuid().ToString()};

            return Create(prueba);
        }

    }
}
