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

namespace jtq.UnitTests
{
    public class QueueServiceTests
    {
        [Fact]
        public async Task GetActiveQueues_ReturnsQueueList()
        {
            var queuerepository = new Mock<IQueueRepository>();
            queuerepository.Setup(x => x.GetActiveQueues()).ReturnsAsync(new List<Queue>());
            Mock <IUnitOfWork<JtqContext>> uow= new();
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _queueservice = new QueueService(uow.Object);

            var queuelist = await _queueservice.GetActiveQueues();

            Assert.NotNull(queuelist);
        }

        [Fact]
        public async Task CreateQueue_CorrectArguments_QueueCreated()
        {
            var queuerepository = new Mock<IQueueRepository>();
            queuerepository.Setup(x => x.CreateQueue(It.IsAny<string>())).ReturnsAsync(new Queue());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _queueservice = new QueueService(uow.Object);

            var queue = await _queueservice.CreateQueue("testqueue");

            Assert.NotNull(queue);
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

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _queueservice.CreateQueue(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _queueservice.CreateQueue(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

    }
}