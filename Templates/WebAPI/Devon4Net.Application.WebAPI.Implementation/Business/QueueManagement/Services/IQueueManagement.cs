using System.Linq.Expressions;
namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Services
{
    /// <summary>
    /// TodoService interface
    /// </summary>
    public interface IQueueManagement
    {
        /// <summary>
        /// GetTodo
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        Task<List<String>> listaString();
    }
}