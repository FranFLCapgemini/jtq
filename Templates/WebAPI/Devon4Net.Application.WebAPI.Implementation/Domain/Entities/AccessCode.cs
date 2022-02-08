
namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    /// <summary>
    /// Entity class for Todos
    /// </summary>
    public partial class AccessCode
    {
        /// <summary>
        /// IdaccessCode
        /// </summary>
        public string IdaccessCode { get; set; }
        /// <summary>
        /// TicketNumber
        /// </summary>
        public string TicketNumber { get; set; }
        /// <summary>
        /// CreationTime
        /// </summary>
        public string CreationTime { get; set; }
        /// <summary>
        /// StartTime
        /// </summary>
        public string StartTime { get; set; }
        /// <summary>
        /// EndTime
        /// </summary>
        public string EndTime { get; set; }
        /// <summary>
        /// VisitorId
        /// </summary>
        public string VisitorId { get; set; }
        /// <summary>
        /// QueueId
        /// </summary>
        public string QueueId { get; set; }
        /// <summary>
        /// Queue
        /// </summary>
        public virtual Queue Queue { get; set; }
        /// <summary>
        /// Visitor
        /// </summary>
        public virtual Visitor Visitor { get; set; }
    }
}
