using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Moq;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Xunit;
using System.Threading.Tasks;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Service;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Service;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Exceptions;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;
using System.Collections.Generic;
using System;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;

namespace jtq.UnitTests
{
    public class AccessCodeServiceTests
    {
        [Fact]
        public async Task SearchAccessCodeById_CorrectID_ReturnAccessCode()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).
                ReturnsAsync(new AccessCode() { IdaccessCode = "id", TicketNumber = "1"});
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            AccessCodeDto accesscode = await _accesscodeservice.SearchAccessCodebyId("id").ConfigureAwait(false);

            Assert.NotNull(accesscode);
            Assert.NotNull(accesscode.IdaccessCode);
            Assert.NotNull(accesscode.TicketNumber);
            accesscoderepository.Verify(x => x.SearchAccessCodebyId(It.IsAny<string>()),Times.Once);
        }

        [Fact]
        public async Task SearchAccessCodeById_NullOrWhiteSpaceArgument_NullOrWhiteSpaceArgumentException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).ReturnsAsync(new AccessCode());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.SearchAccessCodebyId(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.SearchAccessCodebyId(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateAccessCode_CorrectArguments_AcccessCodeCreated()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            var queuerepository = new Mock<IQueueRepository>();
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(),It.IsAny<string>())).ReturnsAsync(new AccessCode() { IdaccessCode="id", TicketNumber="1"});

            Mock<IUnitOfWork<JtqContext>> uow = new();
            //false if visitor doesn't have any code in the queue
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            AccessCodeDto accesscode = await _accesscodeservice.CreateAccessCode("visitor", "queue").ConfigureAwait(false);

            Assert.NotNull(accesscode);
            Assert.NotNull(accesscode.IdaccessCode);
            Assert.NotNull(accesscode.TicketNumber);
            accesscoderepository.Verify(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>()), Times.Once);
        }

        [Fact]
        public async Task CreateAccessCode_VisitorHasAccessCodeAlready_AlreadyHasCodeException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(new AccessCode());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            //true visitor has code already
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(true);
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<AlreadyHasCodeException>(async () => await _accesscodeservice.CreateAccessCode("visitor", "queue").ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateAccessCode_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(new AccessCode());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            //true visitor has code already
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.CreateAccessCode(" ", "queue").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.CreateAccessCode(null, "queue").ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task DeleteAccessCode_CorrectArguments_IdReturned()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            var queuerepository = new Mock<IQueueRepository>();
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).ReturnsAsync(new AccessCode() { IdaccessCode = "id" });
            queuerepository.Setup(x => x.DecrementCustomers(It.IsAny<string>())).ReturnsAsync(1);
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string("id"));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);
            var _queueservice = new QueueService(uow.Object);

            var accesscode = await _accesscodeservice.SearchAccessCodebyId("id");
            var deleted = await _accesscodeservice.DeleteAccessCode(accesscode.IdaccessCode).ConfigureAwait(false);

            Assert.NotNull(deleted);
            accesscoderepository.Verify( x => x.DeleteAccessCode(It.IsAny<string>()), Times.Once);            
        }

        [Fact]
        public async Task DeleteAccessCode_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string("id"));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            //true visitor has code already
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.DeleteAccessCode(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.DeleteAccessCode(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task SearchVisitorAccessCodes_CorrectArguments_ReturnsAccessCodeList()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            var visitorid = Guid.NewGuid().ToString();
            var queueid = Guid.NewGuid().ToString();
            accesscoderepository.Setup(x => x.SearchVisitorAccessCodes(It.IsAny<string>())).
                ReturnsAsync(new List<AccessCode>()
                {
                    new AccessCode(){IdaccessCode=Guid.NewGuid().ToString(), QueueId=queueid, VisitorId=visitorid},
                    new AccessCode(){IdaccessCode=Guid.NewGuid().ToString(), QueueId=queueid, VisitorId=visitorid},
                    new AccessCode(){IdaccessCode=Guid.NewGuid().ToString(), QueueId=queueid, VisitorId=visitorid}
                });
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            var aclist = await _accesscodeservice.SearchVisitorAccessCodes(visitorid);

            Assert.NotNull(aclist);
            Assert.NotNull(aclist[0].IdaccessCode);
            Assert.NotNull(aclist[1].IdaccessCode);
            Assert.NotNull(aclist[2].IdaccessCode);
            accesscoderepository.Verify(x => x.SearchVisitorAccessCodes(It.IsAny<string>()), Times.Once);
        }

        [Fact]
        public async Task SearchVisitorAccessCodes_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.SearchVisitorAccessCodes(It.IsAny<string>())).ReturnsAsync(new List<AccessCode>());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.SearchVisitorAccessCodes(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.SearchVisitorAccessCodes(null).ConfigureAwait(false)).ConfigureAwait(false);
        }
    }
}