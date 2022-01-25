using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Domain.UnitOfWork.UnitOfWork;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Service;
using Moq;

namespace jtq.UnitTests
{
    public class VisitorServiceTests
    {
        //nameing convention method_scenario_expectedBehavior()
        public void CreateVisitor_CorrectArguments_VisitorCreated()
        {
            Mock<IUnitOfWork<JtqContext>> uow = new Mock<IUnitOfWork<JtqContext>>();
            //var _visitorService = new VisitorService(uow);



        }
    }
}