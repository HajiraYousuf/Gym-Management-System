using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using GymManagementSystem.Data;
using GymManagementSystem.Models;

var builder = WebApplication.CreateBuilder(args);


// Database Connection
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection")
    ));


// Identity Configuration
builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options =>
{
    options.SignIn.RequireConfirmedAccount = false;
})
.AddEntityFrameworkStores<ApplicationDbContext>();


// Where Identity sends users when they need to login
builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = "/Account/Login";
});


// MVC
builder.Services.AddControllersWithViews();


var app = builder.Build();


// Middleware
app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();


// Authentication must come before Authorization
app.UseAuthentication();

app.UseAuthorization();


// Default Route
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");


// Run application
app.Run();