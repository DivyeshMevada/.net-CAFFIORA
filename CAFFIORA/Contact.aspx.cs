using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendContact_Click(object sender, EventArgs e)
        {
            pnlContactSuccess.Visible = true;
            txtContactMessage.Text = string.Empty;
            txtContactSubject.Text = string.Empty;
        }
    }
}
