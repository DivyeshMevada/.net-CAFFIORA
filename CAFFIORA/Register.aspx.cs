using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx?role=customer");
        }
    }
}
