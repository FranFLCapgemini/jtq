using Devon4Net.Infrastructure.Log;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Dto;
using Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Service;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Devon4Net.Infrastructure.JWT.Handlers;
using System.Security.Claims;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Controllers
{

    /// <summary>
    /// TODOs controller
    /// </summary>
    [EnableCors("CorsPolicy")]
    [ApiController]
    [Route("[controller]")]

    public class VisitorController: ControllerBase
    {
        private IJwtHandler _jwtHandler { get; set; }
        private readonly IVisitorService _visitorService;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="visitorService"></param>
        /// <param name="JwtHandler"></param>
        public VisitorController(IVisitorService visitorService, IJwtHandler JwtHandler){
            _visitorService = visitorService;
            _jwtHandler = JwtHandler;
        }
        /// <summary>
        /// Creates Visitor
        /// </summary>
        /// <returns></returns>

        [HttpPost("CreateVisitor")]
        [ProducesResponseType(typeof(VisitorDto), StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> CreateVisitor(String username, String name, String pass)
        {
            //pass sin encriptar en la base de datos
            Devon4NetLogger.Debug($"Executing CreateVisitor from controller VisitorController with name: {username} and pass: {pass}");
            var result = await _visitorService.CreateVisitor(username, name, pass).ConfigureAwait(false);
            return StatusCode(StatusCodes.Status201Created, result);
        }

        /// <summary>
        /// Checks user name and pass
        /// </summary>
        /// <returns></returns>
        [HttpGet("Login")]
        [ProducesResponseType(typeof(LoginResponseToken), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> Login(string username, string pass)
        {
            Devon4NetLogger.Debug("Executing Login from VisitorController");
            var check=await _visitorService.Login(username, pass).ConfigureAwait(false);
            if(check){
                var token = _jwtHandler.CreateClientToken(new List<Claim>
                {
                    new Claim(ClaimTypes.Name,username),
                    new Claim(ClaimTypes.NameIdentifier,Guid.NewGuid().ToString())
                });
                return Ok(new LoginResponseToken { Token = token});
            }
            return BadRequest();
        }
    }
}