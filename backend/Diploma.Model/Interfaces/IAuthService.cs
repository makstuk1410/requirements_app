using Diploma.Model.Results;

namespace Diploma.Model.Interfaces;

public interface IAuthService
{
    Task<RegistrationResult> RegisterAsync(string email, string password);
}