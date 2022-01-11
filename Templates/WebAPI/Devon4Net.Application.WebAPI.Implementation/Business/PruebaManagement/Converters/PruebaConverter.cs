using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;

namespace Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Converters
{
    /// <summary>
    /// PruebaConverter
    /// </summary>
    public static class PruebaConverter
    {
        /// <summary>
        /// ModelToDto transformation
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public static PruebaDto ModelToDto(Prueba item)
        {
            if (item == null) return new PruebaDto();

            return new PruebaDto
            {
                Id = item.Id,
                Nombre= item.Nombre
            };
        }

    }
}
