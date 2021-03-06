using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Exceptions;    

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
        public async Task<Visitor> CreateVisitor(string username, string name, string pass, string tlf, bool acceptedCommercial, bool acceptedTerms)
        {
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(pass) || string.IsNullOrWhiteSpace(tlf))
                throw new NullOrWhiteSpaceArgumentException("Null or white space argument");
       
            if (!acceptedTerms)
                throw new MustAcceptTermsException("accepted terms must be true");

            if (await _VisitorRepository.VisitorExists(username))
                return null;

            Devon4NetLogger.Debug($"CreateVisitor method from service VisitorService with values : {username},{pass}");
            return await _VisitorRepository.CreateVisitor(username,name,pass,tlf,acceptedCommercial,acceptedTerms).ConfigureAwait(false);
        }

        ///<Summary>
        ///Login visitor
        ///</Summary>
        /// <param name="username"></param>
        /// <param name="pass"></param>
        public Task<bool> Login(string username, string pass)
        {
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(pass))
                throw new NullOrWhiteSpaceArgumentException("Null or white space argument");

            Devon4NetLogger.Debug("Login visitor");
            return _VisitorRepository.Login(username,pass);
        }
    }
}