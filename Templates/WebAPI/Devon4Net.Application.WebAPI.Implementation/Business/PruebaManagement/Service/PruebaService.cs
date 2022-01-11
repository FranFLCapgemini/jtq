using System.Linq.Expressions;
using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Converters;
using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Service
{
    /// <summary>
    /// Service implementation
    /// </summary>
    public class PruebaService: Service<JtqContext>, IPruebaService
    {
        private readonly IjtqRepository _jtqRepository;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="uoW"></param>
        public PruebaService(IUnitOfWork<JtqContext> uoW) : base(uoW)
        {
            _jtqRepository = uoW.Repository<IjtqRepository>();
        }

        /// <summary>
        /// Gets the object
        /// </summary>
        /// <param name="predicate"></param>
        /// <returns></returns>
        public async Task<IEnumerable<PruebaDto>> GetPrueba(Expression<Func<Prueba, bool>> predicate = null)
        {
            Devon4NetLogger.Debug("GetPrueba method from service PruebaService");
            var result = await _jtqRepository.GetPrueba(predicate).ConfigureAwait(false);
            return result.Select(PruebaConverter.ModelToDto);
        }
        /// <summary>
        /// create prueba
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public Task<Prueba> CreatePrueba(string name)
        {
            Devon4NetLogger.Debug($"SetTodo method from service TodoService with value : {name}");

            if (string.IsNullOrEmpty(name) || string.IsNullOrWhiteSpace(name))
            {
                throw new ArgumentException("The 'Description' field can not be null.");
            }

            return _jtqRepository.CreatePrueba(name);
        }
    }
}
