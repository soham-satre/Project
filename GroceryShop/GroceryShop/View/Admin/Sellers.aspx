<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="GroceryShop.View.Admin.Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style> .form-label { margin-bottom: 25px; /* Adjust the value as needed */ } </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"><br /><img src="../../Assest/Images/diet.png"/><h3>Manage Sellers</h3></div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>Sellers Details</h2>
                <div class="mb-3">
                    <label for="SNameTb" class="form-label" style="color: Navy">Seller Name</label>
                    <br /> <input type="text" class="form-control" id="SNameTb" runat="server">
                </div>
                <div class="mb-3">
                    <label for="SEmailTb" class="form-label" style="color: Navy">Seller Email</label>
                    <input type="text" class="form-control" id="SEmailTb" runat="server">
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="SEmailTb" 
                        Display="Dynamic" ErrorMessage="*Please Enter Valid message" 
                        ForeColor="#FF5050" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <label for="sellerPassTb" class="form-label" style="color: Navy">Seller Password </label>
                    <input type="text" class="form-control" id="sellerPassTb" runat="server">
                </div>
                <div class="mb-3">
                    <label for="PhoneTb" class="form-label" style="color: Navy">Seller Phone Number</label>
                    <input type="text" class="form-control" id="PhoneTb" runat="server">
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" runat="server" ControlToValidate="PhoneTb" 
                        Display="Dynamic" ErrorMessage="*Enter Valid Number" ForeColor="#FF5050" 
                        ValidationExpression="(0|91)?[6-9][0-9]{9}"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <label for="SellAddressTb" class="form-label" style="color: Navy">Seller Address</label>
                    <input type="text" class="form-control" id="SellAddressTb" runat="server">
                </div>
                <label id="Errmsg" runat="server" class="text-danger"></label><br />
                <asp:button ID="SaveBtn" text="SAVE" type="submit" 
                    class="btn btn-primary btn-block" runat="server" onclick="SaveBtn_Click"/>
                <asp:button ID="UpdateBtn" text="UPDATE" type="submit" 
                    class="btn btn-primary btn-block" runat="server"/>
                <asp:button ID="DeleteBtn" text="DELETE" type="submit" class="btn btn-primary btn-block" runat="server"/>
            </div>
            <div class="col-md-8">
                <asp:GridView runat="server" class="table table-hover" ID="SellerGv" 
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanged="SellerGv_SelectedIndexChanged"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
