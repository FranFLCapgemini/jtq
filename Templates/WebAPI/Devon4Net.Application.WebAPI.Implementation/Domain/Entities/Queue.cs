using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    /// <summary>
    /// Entity Queue
    /// </summary>
    public partial class Queue
    {

        /// <summary>
        /// Queue constructor
        /// </summary>
        public Queue()
        {
            AccessCodes = new HashSet<AccessCode>();
        }
        /// <summary>
        /// Idqueue
        /// </summary>
        public string IdQueue { get; set; }
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Logo
        /// </summary>
        public string Logo { get; set; }
        /// <summary>
        /// CurrentNumber
        /// </summary>
        public string CurrentNumber { get; set; }
        /// <summary>
        /// AttentionTime
        /// </summary>
        public string AttentionTime { get; set; }
        /// <summary>
        /// MinAttentionTime
        /// </summary>
        public string MinAttentionTime { get; set; }
        /// <summary>
        /// Active
        /// </summary>
        public bool? Active { get; set; }
        /// <summary>
        /// Customers
        /// </summary>
        public int? Customers { get; set; }
        /// <summary>
        /// AccessCodes
        /// </summary>
        public virtual ICollection<AccessCode> AccessCodes { get; set; }
    }
}
