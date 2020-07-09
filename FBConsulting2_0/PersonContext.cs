using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace FBConsulting2_0
{
    public class PersonContext : DbContext
    {
        public PersonContext()
            : base("DbConnection")
        { }

        public DbSet<Person> Persons { get; set; }
    }
}