using Diploma.Model.Entities;

namespace Diploma.Model.Interfaces;

public interface IUserRepository
{
    Task<User?> FindByEmailAsync(string email);
    Task<bool> ExistsByEmailAsync(string email);
    Task<User> SaveAsync(User user);
}


//+findByEmail(email): User?
//+existsByEmail(email): bool
//+save(user): User