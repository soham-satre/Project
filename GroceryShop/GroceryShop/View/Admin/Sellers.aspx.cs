using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryShop.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSellers();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowSellers()
        {
          string  Query="select * from SellerTb";
        SellerGv.DataSource=Con.getData(Query);
            SellerGv.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (sellerPassTb.Value == "" || SNameTb.Value == "" || PhoneTb.Value == "" || SellAddressTb.Value == "" || SEmailTb.Value == "")
                {
                    Errmsg.InnerText = "Missing Data";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = SEmailTb.Value;
                    string Password = sellerPassTb.Value;
                    string Phone = PhoneTb.Value;
                    string Address = SellAddressTb.Value;

                    string Query = "insert into SellerTb values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, SName, SEmail, Password, Phone, Address);
                    Con.SetData(Query);
                    ShowSellers();
                    Errmsg.InnerText = "Seller Added.....!";
                }
            }
            catch (Exception Ex) {
                Errmsg.InnerText = Ex.Message;
            }
        }
        int key = 0;
        protected void SellerGv_SelectedIndexChanged(object sender, EventArgs e)
        {
            SNameTb.Value = SellerGv.SelectedRow.Cells[2].Text;
            SEmailTb.Value = SellerGv.SelectedRow.Cells[3].Text;
            sellerPassTb.Value = SellerGv.SelectedRow.Cells[4].Text;
            PhoneTb.Value = SellerGv.SelectedRow.Cells[5].Text;
            SellAddressTb.Value = SellerGv.SelectedRow.Cells[6].Text;
        }
    }
}