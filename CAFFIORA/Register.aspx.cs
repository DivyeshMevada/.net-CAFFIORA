using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAFFIORA
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cvAgree_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkAgree.Checked;
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            Response.Redirect("Login.aspx?role=customer");
        }
    }
}
