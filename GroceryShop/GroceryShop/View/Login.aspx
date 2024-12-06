<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GroceryShop.View.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Assest/lib/Bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="row" style="height: 90px">
        </div>
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-4">
                <img src="../Assest/Images/Grocery.png" class="img-fluid" alt="Grocery Shop">
            </div>
            <div class="col-md-4">
                <h1 style="color: Navy">
                    Sign Up</h1>
                <form id="form1" runat="server">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" style="color: Navy">
                        Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label" style="color: Navy" style="color: Navy">
                        Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3  form-check">
                    <input class="form-check-input" type="radio" name="Radio" id="SellerRadio">
                    <label class="form-check-label" for="flexRadioDefault1" style="color: Navy">
                        Seller
                    </label>
                </div>
                <div class="mb-4 form-check">
                    <input class="form-check-input" type="radio" name="Radio" id="AdminRadio" checked>
                    <label class="form-check-label" for="flexRadioDefault2" style="color: Navy">
                        Admin
                    </label>
                </div>
                <div class="mb-3  d-grid">
                    <button type="submit" class="btn btn-danger btn-block" style="color: Navy">
                        Sign Up</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
