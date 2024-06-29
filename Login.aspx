<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HRMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
     .glass {
     
         background: rgba(255, 254, 254, 0.17);
         border-radius: 16px;
         box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
         backdrop-filter: blur(4.5px);
         -webkit-backdrop-filter: blur(4.5px);
         border: 1px solid rgba(255, 254, 254, 0.19);
     }
 </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Images/background.png" style="width:100%;height:100vh" />

    

        <div class=" "  style=" position: absolute; top: 20%; left: 70%;">
            <div class="glass" style="padding: 20px; border-radius: 10px;">


                <div class="text-center">
                    <h4>Login</h4>
                </div>

                <div class="form-group py-1">
                    <label for="TextBox1">Username</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control  rounded-pill" Style="border-radius: 20px;" placeholder="Enter Username"></asp:TextBox>
                    
                </div>

                <div class="form-group py-1 ">
                    <label for="TextBox2">Password</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control rounded-pill" Style="border-radius: 20px;" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    
                </div>
        
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-dark w-100 mt-1  rounded-pill" Style="border-radius: 20px;" OnClick="Button1_Click"  />
            </div>

        </div>
            </div>
    </form>
</body>
</html>
