using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Dto
{
    /// <summary>
    /// Visitor entity
    /// </summary>
    public class VisitorDto
    {
        /// <summary>
        /// Idvisitor
        /// </summary>
        public string Idvisitor { get; set; }
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
