using Devon4Net.Domain.UnitOfWork.Repository;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Data.Repositories
{
    ///<summary>
    ///Visitor repository
    ///</summary>
    public class VisitorRepository : Repository<Visitor>, IVisitorRepository
    {
        ///<summary>
        ///Constructor
        ///</summary>
        ///<param name="context"></param>
        public VisitorRepository(JtqContext context) : base(context)
        {
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
            var visitor=new Visitor();
            visitor.IdVisitor=Guid.NewGuid().ToString();
            visitor.Username=username;
            visitor.Name=name;
            visitor.Password=pass;
            visitor.PhoneNumber=tlf;
            visitor.AcceptedCommercial=acceptedCommercial;
            visitor.AcceptedTerms=acceptedTerms;
            visitor.UserType=false;

            return Create(visitor);
        }
        /// <summary>
        /// CreateVisitor
        /// </summary>
        /// <param name="username"></param>
        /// <param name="pass"></param>
        /// <returns></returns>
        public async Task<bool> Login(string username, string pass)
        {
            var list = await Get(t => t.Username==username && t.Password==pass).ConfigureAwait(false);

            return list!=null&&list.Any();
        }

        /// <summary>
        /// VisitorExists
        /// Check if a visitor with given user name exists
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public async Task<bool> VisitorExists(string username)
        {
            var list = await GetFirstOrDefault(x => x.Username==username).ConfigureAwait(false);
            if (list != null)
                return true;
            return false;
        }
    }
}