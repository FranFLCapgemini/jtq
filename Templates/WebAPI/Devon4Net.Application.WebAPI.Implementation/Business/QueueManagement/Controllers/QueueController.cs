using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Service;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Devon4Net.Application.WebAPI.Implementation.Domain.Entities;
using Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Dto;

namespace Devon4Net.Application.WebAPI.Implementation.Business.QueueManagement.Controllers
{
    /// <summary>
    /// Queue controller
    /// </summary>
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("[controller]")]
    public class QueueController: ControllerBase
    {
        private readonly IQueueService _QueueService; //Interfaz

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="QueueService"></param>
        public QueueController( IQueueService QueueService)
        {
            _QueueService = QueueService;
        }

        /// <summary>
        /// Gets the entire list
        /// </summary>
        /// <returns></returns>
        [HttpGet("ActiveQueues")]
        [ProducesResponseType(typeof(List<QueueDto>), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> GetActiveQueues()
        {
            Devon4NetLogger.Debug("Executing GetQueue from controller QueueController");
            return Ok(await _QueueService.GetActiveQueues().ConfigureAwait(false));
        }
        
        /// <summary>
        /// Create queue
        /// </summary>
        /// <param name="name"></param>
        [HttpPost("CreateQueue")]
        [ProducesResponseType(typeof(Queue), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> CreateQueue(string name)
        {
            Devon4NetLogger.Debug("CreateQueue method from QueueController");
            return Ok(await _QueueService.CreateQueue(name).ConfigureAwait(false));
        }
    }
}
