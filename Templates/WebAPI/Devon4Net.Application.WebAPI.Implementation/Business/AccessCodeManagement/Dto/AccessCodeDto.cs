using Devon4Net.Application.WebAPI.Implementation;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto
{
    /// <summary>
    /// AccessCode dto
    /// </summary>
    public partial class AccessCodeDto
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
    }
}
