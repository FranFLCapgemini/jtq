using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    public partial class Queue
    {
        public Queue()
        {
            AccessCodes = new HashSet<AccessCode>();
        }

        public string Idqueue { get; set; }
        public string Name { get; set; }
        public string Logo { get; set; }
        public string CurrentNumber { get; set; }
        public string AttentionTime { get; set; }
        public string MinAttentionTime { get; set; }
        public bool? Active { get; set; }
        public int? Customers { get; set; }

        public virtual ICollection<AccessCode> AccessCodes { get; set; }
    }
}
