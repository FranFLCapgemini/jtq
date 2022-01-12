using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto
{
    /// <summary>
    /// Queue dto
    /// </summary>
    public partial class QueueDto
    {
        /// <summary>
        /// Idqueue
        /// </summary>
        public string Idqueue { get; set; }
        
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
    }
}
