using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FBConsulting2_0
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Person person = new Person();

                if (TryUpdateModel(person, new FormValueProvider(ModelBindingExecutionContext)))
                {
                    PersonContext db = new PersonContext();
                    db.Persons.Add(person);
                    db.SaveChanges();
                    Response.Redirect("notebook.html");
                  
                }
            }
        }
    }
}