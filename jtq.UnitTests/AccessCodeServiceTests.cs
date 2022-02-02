using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Moq;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Xunit;
using System.Threading.Tasks;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.service;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Exceptions;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;
using System.Collections.Generic;
using System;

namespace jtq.UnitTests
{
    public class AccessCodeServiceTests
    {
        [Fact]
        public async Task SearchAccessCodebyId_CorrectID_ReturnAccessCode()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.SearchAccessCodebyId(It.IsAny<string>())).
                ReturnsAsync(new AccessCode() { IdaccessCode="id"});
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            var accesscode = await _accesscodeservice.SearchAccessCodebyId("id").ConfigureAwait(false);

            //revisar assert, mirar null y excepciones
            //comprobar que el repositorio hace el return que estoy probando
            Assert.NotNull(accesscode);
            Assert.IsType<AccessCode>(accesscode);

        }

        [Fact]
        public async Task SearchAccessCodebyId_NullOrWhiteSpaceArgument_NullOrWhiteSpaceArgumentException()
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
            accesscoderepository.Setup(x => x.CreateAccessCode(It.IsAny<string>(),It.IsAny<string>())).ReturnsAsync(new AccessCode());
            queuerepository.Setup(x => x.IncrementCustomers(It.IsAny<string>())).ReturnsAsync(new int?());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            //false if visitor doesn't have any code in the queue
            accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);

            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            uow.Setup(x => x.Repository<IQueueRepository>()).Returns(queuerepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            var accesscode = await _accesscodeservice.CreateAccessCode("visitor", "queue").ConfigureAwait(false);

            Assert.NotNull(accesscode);
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
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string("id"));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            var deleted = await _accesscodeservice.DeleteAccessCode("id").ConfigureAwait(false);

            Assert.NotNull(deleted);
        }

        [Fact]
        public async Task DeleteAccessCode_NullOrWhitespaceArgument_NullOrWhitespaceArgumentException()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.DeleteAccessCode(It.IsAny<string>())).ReturnsAsync(new string("id"));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            //true visitor has code already
            //accesscoderepository.Setup(x => x.AnyAccessCode(It.IsAny<string>(), It.IsAny<string>())).ReturnsAsync(false);
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.DeleteAccessCode(" ").ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgument>(async () => await _accesscodeservice.DeleteAccessCode(null).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task SearchVisitorAccessCodes_CorrectArguments_ReturnsAccessCodeList()
        {
            var accesscoderepository = new Mock<IAccessCodeRepository>();
            accesscoderepository.Setup(x => x.SearchVisitorAccessCodes(It.IsAny<string>())).ReturnsAsync(new List<AccessCode>());
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IAccessCodeRepository>()).Returns(accesscoderepository.Object);
            var _accesscodeservice = new AccessCodeService(uow.Object);

            var aclist = await _accesscodeservice.SearchVisitorAccessCodes("id");

            Assert.NotNull(aclist);
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