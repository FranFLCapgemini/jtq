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
            return await Get(t => t.Active==true).ConfigureAwait(false);;
        }

        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        public async Task<Queue> CreateQueue(string name)
        {
            var queue=new Queue();
            queue.Idqueue=Guid.NewGuid().ToString();
            queue.Name=name;
            queue.Active=true;
            queue.CurrentNumber=0.ToString();
            queue.MinAttentionTime=0.ToString();
            queue.AttentionTime=0.ToString();
            queue.Customers=0;
            return await Create(queue).ConfigureAwait(false);
        }
    }
}
