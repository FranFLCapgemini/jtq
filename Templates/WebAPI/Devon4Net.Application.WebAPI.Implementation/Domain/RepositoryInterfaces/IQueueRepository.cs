using System.Linq.Expressions;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Domain.UnitOfWork.Repository;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces
{
    /// <summary>
    /// queue repository interface
    /// </summary>
    public interface IQueueRepository : IRepository<Queue>
    {
        /// <summary>
        /// Get queues Active = true
        /// </summary>
        /// <returns></returns>
        Task<IList<Queue>> GetActiveQueues();

        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        Task<Queue> CreateQueue(string name);

        /// <summary>
        /// Customers ++
        /// </summary>
        /// <param name="idqueue"></param>
        Task<int?> IncrementCustomers(string idqueue);

        /// <summary>
        /// Customers --
        /// </summary>
        /// <param name="idqueue"></param>
        Task<int?> DecrementCustomers(string idqueue);

        /// <summary>
        /// Queue exists
        /// </summary>
        /// <param name="name"></param>
        Task<bool> QueueExists(string name);
    }
}
