using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Service;
using Moq;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Xunit;
using System.Threading.Tasks;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Exceptions;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Exceptions;

namespace jtq.UnitTests
{
    public class VisitorServiceTests
    {
        //nameing convention method_scenario_expectedBehavior()
        [Fact]
        public async Task CreateVisitor_CorrectArguments_VisitorCreated()
        {
            var ivisitorrepository = new Mock<IVisitorRepository>();
            //returns Async
            ivisitorrepository.Setup(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .Returns(Task.FromResult(
                    new Visitor() { Username="user", Name="name", Password="pass", PhoneNumber="665665665", AcceptedCommercial=true, AcceptedTerms=true}));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorrepository.Object);
            var _visitorService = new VisitorService(uow.Object);

            var visitor = await _visitorService.CreateVisitor("user","name","pass","665665665",true,true).ConfigureAwait(false);

            Assert.NotNull(visitor);
            Assert.NotNull(visitor.Username);
            Assert.NotNull(visitor.Name);
            Assert.True(visitor.AcceptedTerms);
            ivisitorrepository.Verify(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()), Times.Once);
        }

        [Fact]
        public async Task CreateVisitor_NullArguments_NullOrWhiteSpaceArgumentException()
        {
            var ivisitorrepository = new Mock<IVisitorRepository>();
            ivisitorrepository.Setup(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .Returns(Task.FromResult(new Visitor()));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorrepository.Object);
            var _visitorService = new VisitorService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.CreateVisitor(" ", null, "", "", true, true).ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.CreateVisitor(null, null, "", "", true, true).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateVisitor_AcceptedTermsFalse_MustAcceptTermsException()
        {
            var ivisitorrepository = new Mock<IVisitorRepository>();
            ivisitorrepository.Setup(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .Returns(Task.FromResult(new Visitor()));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorrepository.Object);
            var _visitorService = new VisitorService(uow.Object);

            await Assert.ThrowsAsync<MustAcceptTermsException>(async () => await _visitorService.CreateVisitor("user", "name", "pass", "665665665", true, false).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task Login_CorrectArguments_ReturnsTrue()
        {
            var ivisitorrepository = new Mock<IVisitorRepository>();
            ivisitorrepository.Setup(x => x.Login(It.IsAny<string>(), It.IsAny<string>())).Returns(Task.FromResult(true));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorrepository.Object);
            var _visitorService = new VisitorService(uow.Object);
            var check = await _visitorService.Login("user", "pass").ConfigureAwait(false);

            Assert.True(check);
        }

        [Fact]
        public async Task Login_NullArguments_NullOrWhitespaceArgumentException()
        {
            var ivisitorrepository = new Mock<IVisitorRepository>();
            ivisitorrepository.Setup(x => x.Login(It.IsAny<string>(), It.IsAny<string>())).Returns(Task.FromResult(true));
            Mock<IUnitOfWork<JtqContext>> uow = new();
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorrepository.Object);
            var _visitorService = new VisitorService(uow.Object);

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.Login(" ", null).ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.Login(null, " ").ConfigureAwait(false)).ConfigureAwait(false);
        }

    }
}