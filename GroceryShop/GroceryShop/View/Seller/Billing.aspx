<%@ Page Title="" Language="C#" MasterPageFile="~/View/Seller/SellerMaster.Master"
    AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="GroceryShop.View.Seller.Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> 
        .form-label { 
            margin-bottom: 25px; /* Adjust the value as needed */ 
        } 
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col">
                        <div class="mb-3">
                            <label for="PNameTb" class="form-label" style="color: Navy">Product Name</label>
                            <input type="text" class="form-control" id="PNameTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="PNameTb" class="form-label" style="color: Navy">Product Price</label>
                            <input type="text" class="form-control" id="PrPriceTb" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="PNameTb" class="form-label" style="color: Navy">Product Quantity</label>
                            <input type="text" class="form-control" id="PrQtyTb" runat="server">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                      <asp:GridView runat="server" CssClass="table table-hover" ID="ProductGv"
                    AutoGenerateSelectButton="True" ></asp:GridView>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                
            </div>
        </div>
    </div>
</asp:Content>
