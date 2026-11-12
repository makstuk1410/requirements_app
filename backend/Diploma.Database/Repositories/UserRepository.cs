namespace Diploma.Database.Repositories;

using Microsoft.EntityFrameworkCore;
using Diploma.Model.Interfaces;
using Diploma.Model.Entities;
using Diploma.Database.Data;
using Npgsql;
using Diploma.Model.Results;



public class UserRepository : IUserRepository
{
    private readonly AppDbContext _context;

    public UserRepository(AppDbContext context)
    {
        _context = context;
    }

    public async Task<User?> FindByEmailAsync(string email)
    {
        return await _context.Users.FirstOrDefaultAsync(u => u.Email == email);
    }

    public async Task<bool> ExistsByEmailAsync(string email)
    {
        return await _context.Users.AnyAsync(u => u.Email == email);
    }

    public async Task<User> SaveAsync(User user)
    {
        try
        {
            await _context.Users.AddAsync(user);
            await _context.SaveChangesAsync();

            return user;
        }
        catch (DbUpdateException ex)
        when (ex.InnerException is PostgresException
        {
            SqlState: PostgresErrorCodes.UniqueViolation,
            ConstraintName: "IX_Users_Email"
        })
    {
        throw new DuplicateEmailException(user.Email);
    }
    }
}