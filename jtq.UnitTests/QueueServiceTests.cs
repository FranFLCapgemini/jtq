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
        private readonly QueueService _queueservice;
        private readonly Queue queueconst = new()
        {
            IdQueue = "id",
            Name = "name",
            Active = true,
        };

        public QueueServiceTests()
        {
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            _queueservice = new QueueService(uow.Object);
        }

        [Fact]
        public async Task GetActiveQueues_ExistingActiveQueues_ReturnsQueueList()
        {
            List<string> ids = new() { "id1", "id2", "id3"};
            List<string> names = new() { "test1", "test2", "test3"};
            queuerepository.Setup(x => x.GetActiveQueues()).
                ReturnsAsync(new List<Queue>()
                {
                    new Queue(){ IdQueue = ids[0], Name =names[0], Active=true},
                    new Queue(){ IdQueue = ids[1], Name =names[1], Active=true},
                    new Queue(){ IdQueue = ids[2], Name =names[2], Active=true}
                });

            IEnumerable<QueueDto> queuelist = await _queueservice.GetActiveQueues().ConfigureAwait(false);

            Assert.NotNull(queuelist);
            Assert.Equal(3, queuelist.Count());
            Assert.Equal(ids[0], queuelist.ElementAt(0).Idqueue);
            Assert.Equal(ids[1], queuelist.ElementAt(1).Idqueue);
            Assert.Equal(ids[2], queuelist.ElementAt(2).Idqueue);
            Assert.Equal(names[0], queuelist.ElementAt(0).Name);
            Assert.Equal(names[1], queuelist.ElementAt(1).Name);
            Assert.Equal(names[2], queuelist.ElementAt(2).Name);
            Assert.True(queuelist.ElementAt(0).Active);
            Assert.True(queuelist.ElementAt(1).Active);
            Assert.True(queuelist.ElementAt(2).Active);
            queuerepository.Verify(x => x.GetActiveQueues(),Times.Once);
        }

        [Fact]
        public async Task GetActiveQueues_NoActiveQueues_ReturnsEmptyQueueList()
        {
            queuerepository.Setup(x => x.GetActiveQueues()).ReturnsAsync(new List<Queue>()); 

            IEnumerable<QueueDto> queues = await _queueservice.GetActiveQueues().ConfigureAwait(false);

            Assert.NotNull(queues);
            Assert.Empty(queues);
            queuerepository.Verify(x => x.GetActiveQueues(), Times.Once);
        }

        [Fact]
        public async Task CreateQueue_CorrectArguments_QueueCreated()
        {
            queuerepository.Setup(x => x.CreateQueue(It.IsAny<string>())).ReturnsAsync(new Queue() { IdQueue=queueconst.IdQueue});
            queuerepository.Setup(x => x.QueueExists(It.IsAny<string>())).ReturnsAsync(false);

            QueueDto queue = await _queueservice.CreateQueue(queueconst.Name).ConfigureAwait(false);

            Assert.NotNull(queue);
            Assert.NotNull(queue.Idqueue);
            queuerepository.Verify( x => x.CreateQueue(It.IsAny<string>()),Times.Once);  
        }

        [Fact]
        public async Task CreateQueue_NullOrWhiteSpaceArguments_NullOrWhiteSpaceArgumentsException()
        {
            queuerepository.Setup(x => x.CreateQueue(It.IsAny<string>())).ReturnsAsync(new Queue());

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _queueservice.CreateQueue(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _queueservice.CreateQueue(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

    }
}