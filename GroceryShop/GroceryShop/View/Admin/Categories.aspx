﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="GroceryShop.View.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style> .form-label { margin-bottom: 25px; /* Adjust the value as needed */ } </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">

 <div class="container-fluid">
        <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-8"><br /><img src="../../Assest/Images/diet.png"/><h3>Manage Category</h3></div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>
                    Category Details</h2>
                <div class="mb-3">
                    <label for="PNameTb" class="form-label" style="color: Navy">
                        Category Name</label>
                    <input type="text" class="form-control" id="CatNameTb">
                </div>
                <div class="mb-3">
                    <label for="Text1" class="form-label" style="color: Navy">
                         Category Remarks</label>
                    <input type="text" class="form-control" id="CarRemarkTb">
                </div>
                <div class="mb-3">
              <br /> <br /> <br />
               <asp:button ID="Button1" text="SAVE" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Button2" text="UPDATE" type="submit" class="btn btn-primary btn-block" runat="server"/>
               <asp:button ID="Button3" text="DELETE" type="submit" class="btn btn-primary btn-block" runat="server"/>
                        
            </div>
        </div>
        <div class="col-md-8">
            <!-- table here-->
        </div>
    </div>
    </div>
</asp:Content>
