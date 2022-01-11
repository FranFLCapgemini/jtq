using System;
using System.Collections.Generic;

namespace Devon4Net.Application.WebAPI.Implementation.Domain.Entities
{
    public partial class Visitor
    {
        public Visitor()
        {
            AccessCodes = new HashSet<AccessCode>();
        }

        public string Idvisitor { get; set; }
        public string Username { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string PhoneNumber { get; set; }
        public bool? AcceptedCommercial { get; set; }
        public bool? AcceptedTerms { get; set; }
        public bool? UserType { get; set; }

        public virtual ICollection<AccessCode> AccessCodes { get; set; }
    }
}
