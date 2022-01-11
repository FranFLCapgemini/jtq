using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Service;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Devon4Net.Application.WebAPI.Implementation.Business.PruebaManagement.Controllers
{
    /// <summary>
    /// Prueba controller
    /// </summary>
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("[controller]")]
    public class PruebaController: ControllerBase
    {
        private readonly IPruebaService _pruebaService; //Interfaz

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="pruebaService"></param>
        public PruebaController( IPruebaService pruebaService)
        {
            _pruebaService = pruebaService;
        }

        /// <summary>
        /// Gets the entire list
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [ProducesResponseType(typeof(List<PruebaDto>), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> GetPrueba()
        {
            Devon4NetLogger.Debug("Executing GetPrueba from controller PruebaController");
            return Ok(await _pruebaService.GetPrueba().ConfigureAwait(false));
        }
        /// <summary>
        /// Creates prueba
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ProducesResponseType(typeof(PruebaDto), StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> CreatePrueba(string name)
        {
            Devon4NetLogger.Debug("Executing createPrueba from controller PruebaController");
            var result = await _pruebaService.CreatePrueba(name).ConfigureAwait(false);
            return StatusCode(StatusCodes.Status201Created, result);
        }
    }
}
