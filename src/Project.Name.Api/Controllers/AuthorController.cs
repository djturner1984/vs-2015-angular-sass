using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Cors.Core;
using Microsoft.AspNet.Mvc;

namespace Project.Name.Api.Controllers
{
    //[EnableCors("mypolicy")]
    [Route("api/Author")]
    public class AuthorController : Controller
    {
        // GET: api/values
        [HttpGet]
        public string Get()
        {
            return  "David Turner";
        }
    }
}
