using Diploma.Api.DTOs;
using Diploma.Model.Interfaces;
using Diploma.Model.Results;
using Microsoft.AspNetCore.Mvc;

namespace Diploma.Api.Controllers;

[ApiController]
[Route("api/auth")]
public class AuthController : ControllerBase
{
    private readonly IAuthService _authService;

    public AuthController(IAuthService authService)
    {
        _authService = authService;
    }

    [HttpPost("register")]
    public async Task<IActionResult> Register(
        [FromBody] RegisterRequestDTO dto)
    {
        var result = await _authService.RegisterAsync(
            dto.Email,
            dto.Password);

        if (result.Status ==
            RegistrationStatus.EmailAlreadyExists)
        {
            return Conflict(new ErrorDTO(
                "EMAIL_ALREADY_EXISTS",
                "Podany adres email jest już zajęty."
            ));
        }

        return StatusCode(
            StatusCodes.Status201Created,
            new RegisterResponseDTO(result.UserId!.Value)
        );
    }
}