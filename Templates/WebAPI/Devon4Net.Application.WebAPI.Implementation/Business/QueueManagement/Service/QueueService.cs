using Devon4Net.Domain.UnitOfWork.Service;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Converters;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto;

namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Service
{
    /// <summary>
    /// Service implementation
    /// </summary>
    public class QueueService: Service<JtqContext>, IQueueService
    {
        private readonly IQueueRepository _QueueRepository;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="uoW"></param>
        public QueueService(IUnitOfWork<JtqContext> uoW) : base(uoW)
        {
            _QueueRepository = uoW.Repository<IQueueRepository>();
        }

        /// <summary>
        /// Get queues Active=true
        /// </summary>
        public async Task<IEnumerable<QueueDto>> GetActiveQueues( )
        {
            Devon4NetLogger.Debug("GetPrueba method from service PruebaService");
            var result = await _QueueRepository.GetActiveQueues().ConfigureAwait(false);
            return result.Select(QueueConverter.ModelToDto);
        }
        
        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        public Task<Queue> CreateQueue(string name){
            Devon4NetLogger.Debug("CreateQueue method from QueueService");
            return _QueueRepository.CreateQueue(name);
        }        
    }
}
