using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    public partial class AccessCode
    {
        public string IdaccessCode { get; set; }
        public string TicketNumber { get; set; }
        public string CreationTime { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string VisitorId { get; set; }
        public string QueueId { get; set; }

        public virtual Queue Queue { get; set; }
        public virtual Visitor Visitor { get; set; }
    }
}
