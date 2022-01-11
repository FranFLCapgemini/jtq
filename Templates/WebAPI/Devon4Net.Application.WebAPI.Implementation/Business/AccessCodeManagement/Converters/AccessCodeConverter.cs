using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Converters
{
    /// <summary>
    /// Access Code Converter
    /// </summary>
    public static class AccessCodeConverter
    {
        /// <summary>
        /// ModelToDto transformation
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public static AccessCodeDto ModelToDto(AccessCode item)
        {
            if (item == null) return new AccessCodeDto();

            return new AccessCodeDto
            {
                IdaccessCode=item.IdaccessCode,
                TicketNumber=item.TicketNumber,
            };
        }

    }
}
