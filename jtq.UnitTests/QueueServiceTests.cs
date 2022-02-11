using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Moq;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Xunit;
using System.Threading.Tasks;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Service;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;
using System.Collections.Generic;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto;
using System.Linq;

namespace jtq.UnitTests
{
    public class QueueServiceTests
    {
        private readonly Mock<IQueueRepository> queuerepository = new();
        private readonly Mock<IUnitOfWork<JtqContext>> uow = new();

        public QueueServiceTests()
        {
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
        }

        [Fact]
        public async Task GetActiveQueues_ExistingActiveQueues_ReturnsQueueList()
        {
            //TODO
            List<string> ids = new List<string>() { "id1", "id2", "id3"};
            queuerepository.Setup(x => x.GetActiveQueues()).
                ReturnsAsync(new List<Queue>()
                {
                    new Queue(){ IdQueue = ids[0], Name ="test1", Active=true},
                    new Queue(){ IdQueue = ids[1], Name ="test2", Active=true},
                    new Queue(){ IdQueue = ids[2], Name ="test3", Active=true}
                });
            var _queueservice = new QueueService(uow.Object);

            IEnumerable<QueueDto> queuelist = await _queueservice.GetActiveQueues().ConfigureAwait(false);
            queuelist = queuelist.ToList();

            Assert.NotNull(queuelist);
            Assert.True(queuelist.ElementAt(0).Active);
            Assert.True(queuelist.ElementAt(1).Active);
            Assert.True(queuelist.ElementAt(2).Active);
            queuerepository.Verify(x => x.GetActiveQueues(),Times.Once);
            //TODO revisar
        }

        [Fact]
        public async Task GetActiveQueues_NoActiveQueues_ReturnsEmptyQueueList()
        {
            var queuerepository = new Mock<IQueueRepository>();
            queuerepository.Setup(x => x.GetActiveQueues()).ReturnsAsync(new List<Queue>()); 
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _queueservice = new QueueService(uow.Object);

            IEnumerable<QueueDto> queues = await _queueservice.GetActiveQueues().ConfigureAwait(false);

            Assert.NotNull(queues);
            Assert.Empty(queues);
            queuerepository.Verify(x => x.GetActiveQueues(), Times.Once);
        }

        [Fact]
        public async Task CreateQueue_CorrectArguments_QueueCreated()
        {
            var queuerepository = new Mock<IQueueRepository>();
            queuerepository.Setup(x => x.CreateQueue(It.IsAny<string>())).ReturnsAsync(new Queue() { IdQueue="id"});
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _queueservice = new QueueService(uow.Object);

            QueueDto queue = await _queueservice.CreateQueue("testqueue").ConfigureAwait(false);

            Assert.NotNull(queue);
            Assert.NotNull(queue.Idqueue);
            queuerepository.Verify( x => x.CreateQueue(It.IsAny<string>()),Times.Once);  
        }

        [Fact]
        public async Task CreateQueue_NullOrWhiteSpaceArguments_NullOrWhiteSpaceArgumentsException()
        {
            var queuerepository = new Mock<IQueueRepository>();
            queuerepository.Setup(x => x.CreateQueue(It.IsAny<string>())).ReturnsAsync(new Queue());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _queueservice = new QueueService(uow.Object);

            var queue = await _queueservice.CreateQueue("testqueue");

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _queueservice.CreateQueue(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _queueservice.CreateQueue(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

    }
}