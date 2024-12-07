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
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
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
                    Errmsg.InnerText = "Seller Added.....!";
                }
            }
            catch (Exception Ex) {
                Errmsg.InnerText = Ex.Message;
            }
        }
    }
}