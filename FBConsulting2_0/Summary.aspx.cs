using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FBConsulting2_0
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                PersonID personID = new PersonID();

                if (TryUpdateModel(personID, new FormValueProvider(ModelBindingExecutionContext)))
                {
                    PersonContext db = new PersonContext();
                    Person person = db.Persons
                    .Where(pers => pers.Id == personID.id)
                    .FirstOrDefault();
                    if (person != null)
                    {
                        db.Persons.Remove(person);
                        db.SaveChanges();
                        Response.Redirect("PersonDeleted.html");
                    }
                    else
                    {
                        Response.Redirect("CannotDeletePerson.html");
                    }
                    

                }
            }
        }
    }
}