<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserLeave.aspx.cs" Inherits="HRMS.UserLeave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Paid Leave</asp:ListItem>
        <asp:ListItem>Casual Leave</asp:ListItem>
        <asp:ListItem>Sick Leave</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label1" runat="server" Text="From:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
     
    <script type="text/javascript">
             function validateDate1() {
        var inputDate = document.getElementById('<%= TextBox1.ClientID %>').value;
             var today = new Date();
             var enteredDate = new Date(inputDate);

             // Check if the entered date is today or in the future
             if (enteredDate < today) {
                 alert("Please enter a current or future date.");
             return false;
        }

             return true;
             }

        function validateDate2() {
            var inputDate = document.getElementById('<%= TextBox2.ClientID %>').value;
                          var today = new Date();
                          var enteredDate = new Date(inputDate);

                          // Check if the entered date is today or in the future
                          if (enteredDate < today) {
                              alert("Please enter a current or future date.");
                              return false;
                          }

                          return true;
        }


        function validateDates() {
            var startDate = document.getElementById('<%= TextBox1.ClientID %>').value;
            var endDate = document.getElementById('<%= TextBox2.ClientID %>').value;

            if (new Date(startDate) > new Date(endDate)) {
                alert("Starting date cannot be greater than ending date.");
                return false;
            }

            return true;
        }
</script>
    
    <br />
<asp:Label ID="Label2" runat="server" Text="To:"></asp:Label>
&nbsp &nbsp &nbsp<asp:TextBox ID="TextBox2" TextMode="Date" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Reason"></asp:Label><br />
    <textarea id="TextArea1"  runat="server" cols="20" ></textarea><br />
    <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" />
        </div>
    <br /><br /><br />
    <div>
        <asp:Label ID="Label4" runat="server" Text="Paid Leave: 12"></asp:Label><br />

        <asp:Label ID="Label5" runat="server" Text="Casual Leave: 8"></asp:Label><br />

        <asp:Label ID="Label6" runat="server" Text="Sick Leave: 4"></asp:Label>

    </div>

</asp:Content>
