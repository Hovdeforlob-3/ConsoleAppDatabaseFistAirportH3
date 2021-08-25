using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleAppDatabaseFistAirportH3
{
    class Program
    {
        static void Main(string[] args)
        {
            using (AirportDBEntities context = new AirportDBEntities())
            {
                Router router = new Router
                {
                    HomeIATACode = "CPH",
                    DestinationIATACode = "LHR",
                    RouteOwnerId = 3,

                };

                context.Routers.Add(router);
                context.SaveChanges();

                //Router route = context.Routers.FirstOrDefault(r => r.RouteId == 1);

            }
        }
    }
}
