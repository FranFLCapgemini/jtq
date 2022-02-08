using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    /// <summary>
    /// Visitor
    /// </summary>
    public partial class Visitor
    {
        /// <summary>
        /// Visitor constructor
        /// </summary>
        public Visitor()
        {
            AccessCodes = new HashSet<AccessCode>();
        }

        /// <summary>
        /// IdVisitor
        /// </summary>
        public string IdVisitor { get; set; }
        /// <summary>
        /// Username
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Password
        /// </summary>
        public string Password { get; set; }
        /// <summary>
        /// PhoneNumber
        /// </summary>
        public string PhoneNumber { get; set; }
        /// <summary>
        /// AcceptedCommercial
        /// </summary>
        public bool? AcceptedCommercial { get; set; }
        /// <summary>
        /// AcceptedTerms
        /// </summary>
        public bool? AcceptedTerms { get; set; }
        /// <summary>
        /// UserType
        /// </summary>
        public bool? UserType { get; set; }

        /// <summary>
        /// AccessCodes
        /// </summary>
        public virtual ICollection<AccessCode> AccessCodes { get; set; }
    }
}
