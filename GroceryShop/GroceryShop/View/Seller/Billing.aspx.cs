using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryShop.View.Seller
{
    public partial class Billing : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowProducts();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            // Required for rendering controls
        }
        private void ShowProducts()
        {
            string Query = "select PrId as Id, PrName as Name, PrCat as Category, PrPrice as Price, PrQty as Quantity from ProductTb";
            ProductGv.DataSource = Con.getData(Query);
            ProductGv.DataBind();
        }
    }
}