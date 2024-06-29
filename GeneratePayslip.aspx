<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GeneratePayslip.aspx.cs" Inherits="HRMS.GeneratePayslip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
  <div class="form-group">
    <label for="exampleInputEmail1">Id</label>
  
      <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
  </div>

            <asp:Button ID="Button2" runat="server" Text="Fetch_Details" />

        <div class="form-group">
    <label for="exampleInputEmail1">Present Days</label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Absent Days</label>
      <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
  </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Total Days in month</label>
      <asp:TextBox ID="TextBox4" type="date" runat="server" class="form-control"></asp:TextBox>
  </div>
        <div class="form-group">
    <label for="exampleInputEmail1">Inhand salary</label>
      <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
  </div>
  
        <asp:Button ID="Button1" runat="server" Text="Generate Payslip" CssClass="btn btn-primary btn-block" />
            </div>

</asp:Content>
