using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Service
{
    /// <summary>
    /// Service Implementation
    /// </summary>
    public class VisitorService: Service<JtqContext>, IVisitorService
    {
        private readonly IVisitorRepository _VisitorRepository;

        /// <summary>
        /// Visitor Service
        /// </summary>
        /// <param name="uow"></param>
        /// <returns></returns>
        public VisitorService(IUnitOfWork<JtqContext> uow) : base(uow)
        {
            _VisitorRepository = uow.Repository<IVisitorRepository>();
        }

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
        public Task<Visitor> CreateVisitor(string username, string name, string pass, string tlf, bool acceptedCommercial, bool acceptedTerms)
        {
            Devon4NetLogger.Debug($"CreateVisitor method from service VisitorService with values : {username},{pass}");
            return _VisitorRepository.CreateVisitor(username,name,pass,tlf,acceptedCommercial,acceptedTerms);
        }
        
        ///<Summary>
        ///Login visitor
        ///</Summary>

        public Task<bool> Login(string username, string pass)
        {
            Devon4NetLogger.Debug("Login visitor");
            return _VisitorRepository.Login(username,pass);
        }
    }
}