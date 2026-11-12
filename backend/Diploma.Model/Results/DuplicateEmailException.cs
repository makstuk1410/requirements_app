namespace Diploma.Model.Results;

public class DuplicateEmailException : Exception
{
    public DuplicateEmailException(string email)
        : base($"User with email '{email}' already exists.")
    {
    }
}