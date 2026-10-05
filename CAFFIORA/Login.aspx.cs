using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class Login : Page
    {
        public string CurrentRole = "customer";
        public string LoginHeading = "Welcome to CAFFIORA";
        public string LoginSubheading = "Sign in to continue your café experience";
        public string LeftImage = "images/cafe-interior.jpg";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string role = Request.QueryString["role"];
                if (!string.IsNullOrEmpty(role))
                {
                    CurrentRole = role.ToLower();
                    roleInput.Value = CurrentRole;
                }
            }
            else
            {
                CurrentRole = roleInput.Value.ToLower();
            }

            if (CurrentRole == "staff")
            {
                LoginHeading = "Welcome, CAFFIORA Staff";
                LoginSubheading = "Sign in to manage café operations.";
                LeftImage = "images/staff-espresso-machine.jpg";
            }
            else if (CurrentRole == "admin")
            {
                LoginHeading = "Welcome, CAFFIORA Admin";
                LoginSubheading = "Sign in to manage your café business.";
                LeftImage = "images/admin-bakery-counter.jpg";
            }
            else
            {
                LoginHeading = "Welcome to CAFFIORA";
                LoginSubheading = "Sign in to continue your café experience";
                LeftImage = "images/cafe-interior.jpg";
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            // Demo redirect according to role
            string role = roleInput.Value.ToLower();
            if (role == "staff")
            {
                Response.Redirect("StaffDashboard.aspx");
            }
            else if (role == "admin")
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Redirect("Profile.aspx");
            }
        }
    }
}
