using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryShop.View.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowProducts();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowProducts()
        {
            string Query = "select * from ProductTb";
            ProductGv.DataSource = Con.getData(Query);
            ProductGv.DataBind();
        }
    }
}