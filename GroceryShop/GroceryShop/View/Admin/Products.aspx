<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master"
    AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GroceryShop.View.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style> .form-label { margin-bottom: 25px; /* Adjust the value as needed */ } </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-8"><br /><img src="../../Assest/Images/diet.png"/><h3>Manage Products</h3></div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>
                    Products Details</h2>
                <div class="mb-3">
                    <label for="PNameTb" class="form-label" style="color: Navy">
                        Product Name</label>
                    <input type="text" class="form-control" id="PNameTb" runat="server">
                </div>
                <div class="mb-3">
                    <label for="PCatTb" class="form-label" style="color: Navy">
                        Product Category</label>
                    <input type="text" class="form-control" id="PCatTb" runat="server">
                </div>
                <div class="mb-3">
                    <label for="ProPriTb" class="form-label" style="color: Navy">
                        Product Price</label>
                    <input type="text" class="form-control" id="ProPriTb">
                </div>
                <div class="mb-3">
                    <label for="ProQtyTb" class="form-label" style="color: Navy">
                        Product Quantity</label>
                    <input type="text" class="form-control" id="ProQtyTb" runat="server">
                </div>
                <div class="mb-3">
                    <label for="Text3" class="form-label" style="color: Navy">
                        Expiration Date</label>
                    <input type="date" class="form-control" id="ExpDate" runat="server">
                </div>
                 <label id="Errmsg" runat="server" class="text-danger"></label><br /><br />
               <asp:button text="Save" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Update" text="UPDATE" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Delete" text="DELETE" type="submit" class="btn btn-primary btn-block" runat="server"/>
                        
            </div>
        </div>
        <div class="col-md-8">
              <asp:GridView runat="server" CssClass="table table-hover" ID="ProductGv" 
                    AutoGenerateSelectButton="True" ></asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>
