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
                    <input type="text" class="form-control" id="PNameTb">
                </div>
                <div class="mb-3">
                    <label for="Text1" class="form-label" style="color: Navy">
                        Product Category</label>
                    <input type="text" class="form-control" id="Text1">
                </div>
                <div class="mb-3">
                    <label for="Text2" class="form-label" style="color: Navy">
                        Product Price</label>
                    <input type="text" class="form-control" id="Text2">
                </div>
                <div class="mb-3">
                    <label for="Text3" class="form-label" style="color: Navy">
                        Product Quantity</label>
                    <input type="text" class="form-control" id="Text3">
                </div>
                <div class="mb-3">
                    <label for="Text3" class="form-label" style="color: Navy">
                        Expiration Date</label>
                    <input type="date" class="form-control" id="ExpDate">
                </div>
               <asp:button text="Save" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Update" text="UPDATE" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Delete" text="DELETE" type="submit" class="btn btn-primary btn-block" runat="server"/>
                        
            </div>
        </div>
        <div class="col-md-8">
            <!-- table here-->
        </div>
    </div>
    </div>
</asp:Content>
