using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Dto
{
    /// <summary>
    /// Login entity
    /// </summary>
    public class LoginDto
    {
        /// <summary>
        /// username
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// password
        /// </summary>
        public string Password { get; set; }
        
    }
}
