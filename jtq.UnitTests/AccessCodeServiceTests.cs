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

        private readonly Mock<IQueueRepository> queuerepository = new();
        private readonly Mock<IAccessCodeRepository> accesscoderepository = new();
        private readonly Mock<IUnitOfWork<JtqContext>> uow = new();
        private readonly AccessCodeService _accesscodeservice;
        private readonly AccessCode constData = new()
            {
                VisitorId = "visitor",
                QueueId = "queue",
                IdaccessCode = "id",
                TicketNumber = "1"
            };

        public AccessCodeServiceTests()
        {
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            _accesscodeservice = new AccessCodeService(uow.Object);
        }

        [Fact]
        public async Task SearchAccessCodeById_CorrectID_ReturnAccessCode()
        {
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).
                ReturnsAsync(new AccessCode() { IdaccessCode = constData.IdaccessCode, TicketNumber = constData.TicketNumber});

            AccessCodeDto accesscode = await _accesscodeservice.SearchAccessCodebyId("id").ConfigureAwait(false);

            Assert.NotNull(accesscode);
            Assert.NotNull(accesscode.IdaccessCode);
            Assert.NotNull(accesscode.TicketNumber);
            accesscoderepository.Verify(x => x.SearchAccessCodebyId(It.IsAny<string>()),Times.Once);
        }

        [Fact]
        public async Task SearchAccessCodeById_NullOrWhiteSpaceArgument_NullOrWhiteSpaceArgumentException()
        {
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).ReturnsAsync(new AccessCode());

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.SearchAccessCodebyId(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.SearchAccessCodebyId(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateAccessCode_CorrectArguments_AcccessCodeCreated()
        {
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(),It.IsAny<string>())).
                ReturnsAsync(new AccessCode() { IdaccessCode=constData.IdaccessCode, TicketNumber=constData.TicketNumber});

            //false if visitor doesn't have any code in the queue
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);
            AccessCodeDto accesscode = await _accesscodeservice.CreateAccessCode(constData.VisitorId, constData.QueueId).ConfigureAwait(false);

            Assert.NotNull(accesscode);
            Assert.Equal(accesscode.IdaccessCode, constData.IdaccessCode);
            Assert.Equal(accesscode.TicketNumber, constData.TicketNumber);
            accesscoderepository.Verify(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>()), Times.Once);
        }

        [Fact]
        public async Task CreateAccessCode_VisitorHasAccessCodeAlready_AlreadyHasCodeException()
        {
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>())).
                ReturnsAsync(new AccessCode());
            //true visitor has code already
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(true);

            await Assert.ThrowsAsync<AlreadyHasCodeException>(async () => await _accesscodeservice.CreateAccessCode(constData.VisitorId, constData.QueueId).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateAccessCode_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(new AccessCode());
            //true visitor has code already
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.CreateAccessCode(" ", "queue").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.CreateAccessCode(null, "queue").ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task DeleteAccessCode_CorrectArguments_IdReturned()
        {
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).ReturnsAsync(new AccessCode() { IdaccessCode = constData.IdaccessCode });
            queuerepository.Setup(x => x.DecrementCustomers(It.IsAny<string>())).ReturnsAsync(1);
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string(constData.IdaccessCode));

            var accesscode = await _accesscodeservice.SearchAccessCodebyId(constData.IdaccessCode);
            var deleted = await _accesscodeservice.DeleteAccessCode(accesscode.IdaccessCode).ConfigureAwait(false);

            Assert.NotNull(deleted);
            Assert.Equal(accesscode.IdaccessCode, deleted);
            accesscoderepository.Verify( x => x.DeleteAccessCode(It.IsAny<string>()), Times.Once);            
        }

        [Fact]
        public async Task DeleteAccessCode_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string(constData.IdaccessCode));
            //true visitor has code already
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.DeleteAccessCode(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.DeleteAccessCode(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task SearchVisitorAccessCodes_CorrectArguments_ReturnsAccessCodeList()
        {
            List<string> ids = new() { "id1", "id2", "id3" };
            accesscoderepository.Setup(x => x.SearchVisitorAccessCodes(It.IsAny<string>())).
                ReturnsAsync(new List<AccessCode>()
                {
                    new AccessCode(){IdaccessCode=ids[0], QueueId=constData.QueueId, VisitorId=constData.VisitorId},
                    new AccessCode(){IdaccessCode=ids[1], QueueId=constData.QueueId, VisitorId=constData.VisitorId},
                    new AccessCode(){IdaccessCode=ids[2], QueueId=constData.QueueId, VisitorId=constData.VisitorId}
                });
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);

            var aclist = await _accesscodeservice.SearchVisitorAccessCodes(constData.VisitorId);

            Assert.NotNull(aclist);
            Assert.NotNull(aclist[0].IdaccessCode);
            Assert.NotNull(aclist[1].IdaccessCode);
            Assert.NotNull(aclist[2].IdaccessCode);
            accesscoderepository.Verify(x => x.SearchVisitorAccessCodes(It.IsAny<string>()), Times.Once);
            //TODO revisar
        }

        [Fact]
        public async Task SearchVisitorAccessCodes_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            accesscoderepository.Setup(x => x.SearchVisitorAccessCodes(It.IsAny<string>())).ReturnsAsync(new List<AccessCode>());
            
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.SearchVisitorAccessCodes(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _accesscodeservice.SearchVisitorAccessCodes(null).ConfigureAwait(false)).ConfigureAwait(false);
        }
    }
}