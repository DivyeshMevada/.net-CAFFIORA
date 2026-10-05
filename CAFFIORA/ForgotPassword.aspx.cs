using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            pnlSuccess.Visible = true;
        }
    }
}
