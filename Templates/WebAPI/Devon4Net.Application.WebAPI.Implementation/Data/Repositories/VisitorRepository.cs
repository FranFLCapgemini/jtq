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
        /// <returns></returns>
        public Task<Visitor> CreateVisitor(String username, String name, String pass)
        {
            var visitor=new Visitor();
            visitor.Idvisitor=Guid.NewGuid().ToString();
            visitor.Username=username;
            visitor.Name=name;
            visitor.Password=pass;
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
    }
}