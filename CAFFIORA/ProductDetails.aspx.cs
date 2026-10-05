using System;
using System.Web.UI;

namespace CAFFIORA
{
    public partial class ProductDetails : Page
    {
        public string ProductName = "Italian Roast";
        public string ProductPrice = "249";
        public string ProductImage = "images/coffee-italian-roast.jpg";
        public string ProductDesc = "A bold, classic roast with deep, smoky notes and a caramelized sweetness. Sourced from the finest highland beans and roasted to perfection for a powerful, full-bodied finish.";

        protected void Page_Load(object sender, EventArgs e)
        {
            string idStr = Request.QueryString["id"];
            if (idStr == "1")
            {
                ProductName = "Velvet Espresso";
                ProductPrice = "279";
                ProductImage = "images/coffee-espresso.jpg";
                ProductDesc = "Our signature double shot, extracted to perfection for an intense, full-bodied aromatic experience.";
            }
            else if (idStr == "3")
            {
                ProductName = "Caramel Macchiato";
                ProductPrice = "319";
                ProductImage = "images/coffee-macchiato.jpg";
                ProductDesc = "Freshly steamed milk with vanilla-flavored syrup, marked with espresso and topped with decadent caramel drizzle.";
            }
            else if (idStr == "4")
            {
                ProductName = "Vanilla Croissant";
                ProductPrice = "280";
                ProductImage = "images/croissant.jpg";
                ProductDesc = "Flaky, golden pastry with rich Madagascar vanilla bean cream filling and delicate powdered sugar.";
            }
        }
    }
}
