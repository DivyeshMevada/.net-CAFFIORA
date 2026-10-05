using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class Checkout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderConfirmation.aspx");
        }
    }
}
