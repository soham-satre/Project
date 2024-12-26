﻿using System;
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
            getCategories();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // Required for rendering controls
        }
        private void getCategories() { 
            string Query = "SELECT * FROM CategoryTb1"; 
            PCatTb.DataTextField = Con.getData(Query).Columns["CatName"].ToString(); 
            PCatTb.DataValueField = Con.getData(Query).Columns["CatId"].ToString(); 
            PCatTb.DataSource = Con.getData(Query); PCatTb.DataBind(); 
        }
        private void ShowProducts()
        {
            string Query = "select * from ProductTb";
            ProductGv.DataSource = Con.getData(Query);
            ProductGv.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || PCatTb.DataTextField == "" || ProPriTb.Value == "" || ProQtyTb.Value == "")
                {
                    Errmsg.InnerText = "Missing Data";
                }
                else
                {
                    string productName = PNameTb.Value;
                    string productCategory = (string)PCatTb.DataValueField;
                    string productPrice = ProPriTb.Value;
                    string productQuantity = ProQtyTb.Value;
                    DateTime expirationDate = DateTime.Parse(ExpDate.Text);
                   

                    string Query = "insert into ProductTb values('{0}','{1}',{2},{3},'{4}')";
                    Query = string.Format(Query, productName, productCategory, productPrice, productQuantity, expirationDate);
                    Con.SetData(Query);
                    ShowProducts();
                    Errmsg.InnerText = "Product Added.....!";
                }
            }
            catch (Exception Ex)
            {
                Errmsg.InnerText = Ex.Message;
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || PCatTb.DataTextField == "" || ProPriTb.Value == "" || ProQtyTb.Value == "")
                {
                    Errmsg.InnerText = "Missing Data";
                }
                else
                {
                    string productName = PNameTb.Value;
                    string productCategory = PCatTb.DataTextField;
                    string productPrice = ProPriTb.Value;
                    string productQuantity = ProQtyTb.Value;
                    DateTime expirationDate = DateTime.Parse(ExpDate.Text);


                    string Query = "update ProductTb set PrName='{0}',PrCat='{1}', PrPrice='{2}', PrQty='{3}', PrExpDate='{4}' where PrId={5}";
                    Query = string.Format(Query, productName, productCategory, productPrice, productQuantity, expirationDate, ProductGv.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    Errmsg.InnerText = "Product Updated.....!";
                }
            }
            catch (Exception Ex)
            {
                Errmsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "")
                {
                    Errmsg.InnerText = "Missing Data";
                }
                else
                {
                    string productName = PNameTb.Value;
                    string Query = "delete from ProductTb where PrId={0}";
                    Query = string.Format(Query, ProductGv.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowProducts();
                    Errmsg.InnerText = "Product Deleted.....!";
                }
            }
            catch (Exception Ex)
            {
                Errmsg.InnerText = Ex.Message;
            }
        }

        int key = 0;
        protected void ProductGv_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = ProductGv.SelectedRow.Cells[2].Text;
            PCatTb.DataValueField = ProductGv.SelectedRow.Cells[3].Text;
            ProPriTb.Value = ProductGv.SelectedRow.Cells[4].Text;
            ProQtyTb.Value = ProductGv.SelectedRow.Cells[5].Text;
            ExpDate.Text = DateTime.Parse(ProductGv.SelectedRow.Cells[6].Text).ToString("yyyy-MM-dd");

            if (PNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(ProductGv.SelectedRow.Cells[1].Text);
            }
        }

    }
}
