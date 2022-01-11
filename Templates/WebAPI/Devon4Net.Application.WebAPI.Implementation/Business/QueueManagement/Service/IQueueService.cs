using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using System.Linq.Expressions;
namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Service
{
    /// <summary>
    /// TodoService interface
    /// </summary>
    public interface IQueueService
    {
        /// <summary>
        /// GetTodo
        /// </summary>
        /// <returns></returns>
        Task<IEnumerable<QueueDto>> GetActiveQueues();

        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        Task<Queue> CreateQueue(string name);
    }
}