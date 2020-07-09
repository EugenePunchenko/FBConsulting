using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FBConsulting2_0
{
    public partial class ChangePerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Person person = new Person();

                if (TryUpdateModel(person, new FormValueProvider(ModelBindingExecutionContext)))
                {
                    PersonContext db = new PersonContext();
                    var contact = db.Persons
        .Where(cont => cont.Id == person.Id)
        .FirstOrDefault();


                    if (contact != null)
                    {
                        contact.name = person.name;
                        contact.surname = person.surname;
                        contact.email = person.email;
                        db.SaveChanges();
                        Response.Redirect("PersonChanged.html");
                    }
                    else
                    {
                        Response.Redirect("CannotChangePerson.html");
                    }

                }
            }
        }
    }
}