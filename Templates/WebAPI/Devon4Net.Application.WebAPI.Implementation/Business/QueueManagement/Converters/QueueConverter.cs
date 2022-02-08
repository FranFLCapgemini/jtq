
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Converters
{
    /// <summary>
    /// QueueConverter
    /// </summary>
    public static class QueueConverter
    {
        /// <summary>
        /// ModelToDto transformation
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public static QueueDto ModelToDto(Queue item)
        {
            if (item == null) return new QueueDto();

            return new QueueDto
            {
                Idqueue = item.IdQueue,
                Name= item.Name,
                Logo= item.Logo,
                CurrentNumber= item.CurrentNumber,
                AttentionTime= item.AttentionTime,
                MinAttentionTime= item.AttentionTime,
                Active= item.Active,
            };
        }

    }
}
