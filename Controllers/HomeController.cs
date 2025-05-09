using Microsoft.AspNetCore.Mvc;

namespace HelloWorldApp.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewBag.Message = "Hello, World!";
            return View();
        }
    }
}
