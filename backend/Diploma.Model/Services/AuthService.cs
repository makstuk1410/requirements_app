using Diploma.Model.Entities;
using Diploma.Model.Interfaces;
using Diploma.Model.Results;
using Microsoft.AspNetCore.Identity;

namespace Diploma.Model.Services;

public class AuthService : IAuthService
{
    private readonly IUserRepository _userRepository;
    private readonly IPasswordHasher<User> _passwordHasher;

    public AuthService(
        IUserRepository userRepository,
        IPasswordHasher<User> passwordHasher)
    {
        _userRepository = userRepository;
        _passwordHasher = passwordHasher;
    }

    public async Task<RegistrationResult> RegisterAsync(
        string email,
        string password)
    {
        // 1. Normalizacja email
        email = email.Trim().ToLowerInvariant();

        // 2. Sprawdzenie dostępności email
        if (await _userRepository.ExistsByEmailAsync(email))
        {
            return new RegistrationResult(
                RegistrationStatus.EmailAlreadyExists);
        }

        // 3. Utworzenie użytkownika
        var user = new User
        {
            Email = email,
            CreatedAt = DateTime.UtcNow
        };

        // 4. Hashowanie hasła
        user.PasswordHash =
            _passwordHasher.HashPassword(user, password);

        // 5. Zapis użytkownika
        try
        {
            var savedUser = await _userRepository.SaveAsync(user);

            return new RegistrationResult(
                RegistrationStatus.Success,
                savedUser.Id);
        }
        catch (DuplicateEmailException)
        {
            return new RegistrationResult(
                RegistrationStatus.EmailAlreadyExists);
        }
    }
}