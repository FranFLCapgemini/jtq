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
        private readonly Mock<IVisitorRepository> ivisitorepository = new();
        private readonly Mock<IUnitOfWork<JtqContext>> uow = new();
        private readonly VisitorService _visitorService;

        public VisitorServiceTests()
        {
            uow.Setup(x => x.Repository<IVisitorRepository>()).Returns(ivisitorepository.Object);
            _visitorService = new VisitorService(uow.Object);
        }

        //naming convention method_scenario_expectedBehavior()
        [Fact]
        public async Task CreateVisitor_CorrectArguments_VisitorCreated()
        {
            var visitorConst = new Visitor()
            {
                Username = "user",
                Name = "name",
                Password = "pass",
                PhoneNumber = "665665665",
                AcceptedCommercial = true,
                AcceptedTerms = true
            };
            ivisitorepository.Setup(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .ReturnsAsync(visitorConst);

            var visitor = await _visitorService.CreateVisitor(visitorConst.Username, visitorConst.Name, visitorConst.Password, visitorConst.PhoneNumber, visitorConst.AcceptedCommercial, visitorConst.AcceptedCommercial).ConfigureAwait(false);

            Assert.NotNull(visitor);
            Assert.NotNull(visitor.Username);
            Assert.NotNull(visitor.Name);
            Assert.True(visitor.AcceptedTerms);
            ivisitorepository.Verify(x => x.CreateVisitor(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()), Times.Once);
        }

        [Fact]
        public async Task CreateVisitor_NullArguments_NullOrWhiteSpaceArgumentException()
        {
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.CreateVisitor(" ", null, "", "", true, true).ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.CreateVisitor(null, null, "", "", true, true).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task CreateVisitor_AcceptedTermsFalse_MustAcceptTermsException()
        {
            await Assert.ThrowsAsync<MustAcceptTermsException>(async () => await _visitorService.CreateVisitor("user", "name", "pass", "665665665", true, false).ConfigureAwait(false)).ConfigureAwait(false);
        }

        [Fact]
        public async Task Login_CorrectArguments_ReturnsTrue()
        {
            ivisitorepository.Setup(x => x.Login(It.IsAny<string>(), It.IsAny<string>())).Returns(Task.FromResult(true));

            var check = await _visitorService.Login("user", "pass").ConfigureAwait(false);

            Assert.True(check);
        }

        [Fact]
        public async Task Login_NullArguments_NullOrWhitespaceArgumentException()
        {
            ivisitorepository.Setup(x => x.Login(It.IsAny<string>(), It.IsAny<string>())).Returns(Task.FromResult(true));

            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.Login(" ", null).ConfigureAwait(false)).ConfigureAwait(false);
            await Assert.ThrowsAsync<NullOrWhiteSpaceArgumentException>(async () => await _visitorService.Login(null, " ").ConfigureAwait(false)).ConfigureAwait(false);
        }

    }
}