using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FBConsulting2_0
{
    public class Notebook
    {
        private static Notebook notebook = new Notebook();
        private List<Person> people = new List<Person>();
        public static Notebook GetNotebook()
        {
            return notebook;
        }
        public IEnumerable<Person> GetAllPeople()
        {
            return people;
        }
        public void AddMember(Person person)
        {
            people.Add(person);
        }
    }
}