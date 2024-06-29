<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="JoiningForm.aspx.cs" Inherits="HRMS.JoiningForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

        <div>
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
  </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Contact</label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
      <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
  </div>
            <div class="form-group">
  <label for="exampleInputEmail1">Salary</label>
    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
</div>
        <div class="form-group">
    <label for="exampleInputEmail1">DOB</label>
      <asp:TextBox ID="TextBox4" type="date" runat="server" class="form-control"></asp:TextBox>
  </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Date of Joining</label>
      <asp:TextBox ID="TextBox5" type="date" runat="server" class="form-control"></asp:TextBox>
  </div>

            
      <div class="form-group">
  <label for="exampleInputEmail1">Username</label>
    <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
</div>
  
      <div class="form-group">
  <label for="exampleInputEmail1">Password</label>
    <asp:TextBox ID="TextBox8" type="date" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
</div>
  
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" OnClick="Button1_Click" />
            </div>

     


</asp:Content>
