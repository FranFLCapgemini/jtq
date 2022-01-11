using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Dto;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.service;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Controllers
{
    ///<summary>
    /// Access Code Controller
    ///</summary>
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("[controller]")]
    public class AccessCodeController: ControllerBase
    {
        private readonly IAccessCodeService _AccessCodeService;

        ///<summary>
        ///Constructor
        ///</summary>
        ///<param name="AccessCodeService"></param>
        public AccessCodeController(IAccessCodeService AccessCodeService)
        {
            _AccessCodeService=AccessCodeService;
        }

        /// <summary>
        /// Search Access Code Service
        /// </summary>
        /// <param name="idaccesscode"></param>
        [HttpGet("search access code")]
        [ProducesResponseType(typeof(AccessCodeDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> SearchAccessCode(String idaccesscode)
        {
            Devon4NetLogger.Debug("SearchAccessCode method from AccessCodeController");
            return Ok(await _AccessCodeService.SearchAccessCode(idaccesscode).ConfigureAwait(false));
        }
        
        /// <summary>
        /// Create Access Code
        /// </summary>
        /// <param name="idvisitor"></param>
        /// <param name="idqueue"></param>
        [HttpPost("createAccessCode")]
        [ProducesResponseType(typeof(AccessCodeDto), StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> CreateAccessCode(string idvisitor, string idqueue)
        {
            Devon4NetLogger.Debug("CreateAccessCode method from AccesCodeController");
            var accesscode = await _AccessCodeService.CreateAccessCode(idvisitor,idqueue).ConfigureAwait(false);
            return StatusCode(StatusCodes.Status201Created, accesscode);
        }
        
        /// <summary>
        /// Access Code method from access code service
        /// </summary>
        /// <param name="idaccesscode"></param>

        [HttpPost("delete access code")]
        [ProducesResponseType(typeof(AccessCodeDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> DeleteAccessCode(string idaccesscode)
        {
            Devon4NetLogger.Debug($"DeleteAccessCode method from DeleteAccessCodeController with id: {idaccesscode}");

            return Ok(await _AccessCodeService.DeleteAccessCode(idaccesscode).ConfigureAwait(false));
        }
    }
}