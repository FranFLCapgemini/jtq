using Devon4Net.Domain.UnitOfWork.Repository;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Data.Repositories
{
    /// <summary>
    /// Repository implementation for jtq
    /// </summary>
    public class QueueRepository : Repository<Queue>, IQueueRepository
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="context"></param>
        public QueueRepository(JtqContext context) : base(context)
        {
        }

        /// <summary>
        /// Get active queues
        /// </summary>
        public async Task<IList<Queue>> GetActiveQueues()
        {
            return await Get(t => t.Active==true).ConfigureAwait(false);
        }

        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        public async Task<Queue> CreateQueue(string name)
        {
            var queue = new Queue
            {
                IdQueue = Guid.NewGuid().ToString(),
                Name = name,
                Active = true,
                CurrentNumber = 0.ToString(),
                MinAttentionTime = 0.ToString(),
                AttentionTime = 0.ToString(),
                Customers = 0
            };
            return await Create(queue).ConfigureAwait(false);
        }
        /// <summary>
        /// Customers ++
        /// </summary>
        /// <param name="idqueue"></param>
        public async Task<int?> IncrementCustomers(string idqueue)
        {
            var q = await GetFirstOrDefault(t => t.IdQueue == idqueue).ConfigureAwait(false);
            q.Customers++;
            await Update(q).ConfigureAwait(false);
            return q.Customers;
        }
        /// <summary>
        /// Customers --
        /// </summary>
        /// <param name="idqueue"></param>
        public async Task<int?> DecrementCustomers(string idqueue)
        {
            var q = await GetFirstOrDefault(t => t.IdQueue == idqueue).ConfigureAwait(false);
            q.Customers--;
            await Update(q).ConfigureAwait(false);
            return q.Customers;
        }

        /// <summary>
        /// QueueExists
        /// </summary>
        /// <param name="name"></param>
        public async Task<bool> QueueExists(string name)
        {
            var check =await GetFirstOrDefault(x => x.Name == name).ConfigureAwait(false);
            if(check==null)
                return false;
            return true;
        }
    }
}
