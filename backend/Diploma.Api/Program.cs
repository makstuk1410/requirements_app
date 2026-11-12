using Diploma.Database.Data;
using Diploma.Database.Repositories;
using Diploma.Model.Entities;
using Diploma.Model.Interfaces;
using Diploma.Model.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseNpgsql(
        builder.Configuration.GetConnectionString(
            "DefaultConnection")));

builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<IAuthService, AuthService>();

builder.Services.AddScoped<
    IPasswordHasher<User>,
    PasswordHasher<User>>();

builder.Services.AddCors(options =>
{
    options.AddPolicy("FlutterDev", policy =>
    {
        policy.WithOrigins(
                "http://localhost:3000",
                "http://localhost:8081")
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});

var app = builder.Build();
app.UseExceptionHandler(errorApp =>
{
    errorApp.Run(async context =>
    {
        context.Response.StatusCode = 500;
        context.Response.ContentType = "application/json";

        await context.Response.WriteAsJsonAsync(
            new Diploma.Api.DTOs.ErrorDTO(
                "INTERNAL_ERROR",
                "Wystąpił błąd serwera."
            ));
    });
});
app.UseCors("FlutterDev");

app.MapControllers();

app.Run();