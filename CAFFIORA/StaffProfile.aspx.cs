using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class StaffProfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveStaff_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            pnlStaffSuccess.Visible = true;
        }
    }
}
