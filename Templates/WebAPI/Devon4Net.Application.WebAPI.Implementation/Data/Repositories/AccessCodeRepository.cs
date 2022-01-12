using Devon4Net.Infrastructure.Log;
using Devon4Net.Domain.UnitOfWork.Repository;
using Devon4Net.Application.WebAPI.Implementation.Domain.RepositoryInterfaces;
using Devon4Net.Application.WebAPI.Implementation.Domain.Database;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Data.Repositories
{
    ///<Summary>
    ///Access code repository
    ///</Summary>
    public class AccessCodeRepository : Repository<AccessCode>, IAccessCodeRepository
    {
        ///<Summary>
        ///Constructor
        ///</Summary>
        ///<param name="context"></param>
        public AccessCodeRepository(JtqContext context) : base(context)
        {
        }        
        
        /// <summary>
        /// CreateAccessCode
        /// </summary>
        /// <param name="idvisitor"></param>
        /// <param name="idqueue"></param>
        /// <returns></returns>
        public async Task<AccessCode> CreateAccessCode(string idvisitor, string idqueue)
        {
            //Not null IdaccessCode, ticketNumber, visitorID, queueID
            Devon4NetLogger.Debug("CreateAccessCode method form repository AccessCodeRepository");
            var numticket=await Count(t=> t.QueueId==idqueue).ConfigureAwait(false);
            numticket++;
            var AccessCode=new AccessCode();
            AccessCode.IdaccessCode=Guid.NewGuid().ToString();
            AccessCode.TicketNumber=numticket.ToString();
            AccessCode.VisitorId=idvisitor;
            AccessCode.QueueId=idqueue;
            return await Create(AccessCode);
        }

        /// <summary>
        /// DeleteAccessCode
        /// </summary>
        /// <param name="idaccesscode"></param>
        /// <returns></returns>
        public async Task<string> DeleteAccessCode(string idaccesscode)
        {
            Devon4NetLogger.Debug("DeleteAccessCode method from repository AccessCodeRepository");
            var deleted = await Delete( t => t.IdaccessCode==idaccesscode).ConfigureAwait(false);

            return idaccesscode;
        }

        /// <summary>
        /// search access code
        /// </summary>
        /// <param name="idaccesscode"></param>
        /// <returns></returns>
        public Task<AccessCode> SearchAccessCodebyIdaccesscode(String idaccesscode)
        {
            Devon4NetLogger.Debug("SearchAccessCode method from repository AccessCodeRepository");
            return GetFirstOrDefault(t=>t.IdaccessCode==idaccesscode);
        }
    }
}