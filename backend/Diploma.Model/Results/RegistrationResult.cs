namespace Diploma.Model.Results;

public enum RegistrationStatus
{
    Success,
    EmailAlreadyExists
}

public record RegistrationResult(
    RegistrationStatus Status,
    int? UserId = null
);