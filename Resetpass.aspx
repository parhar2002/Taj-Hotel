<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetpass.aspx.cs" Inherits="Taj_Hotel.Admin.Resetpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<div style="background-image: url('/image/loginimg.jpg'); background-repeat: no-repeat;height:600px;  background-attachment: fixed">
    <form id="form2" runat="server"><br />
      <table style=" border: 10px outset #00ff90; height:300px; width: 450px;  background-color:white" align="center">
      <tr>
          <td colspan="2"  align="center" class="auto-style11" >
              <asp:Label ID="Label3" runat="server" Text="ADMIN RESET" Font-Size="XX-Large" ForeColor="#4800FF"  ></asp:Label><br />
              ______________________________________
          </td>
      </tr><tr >
          <td style="padding-left: 80px" class="auto-style9">
              <asp:Label ID="Label4" runat="server" Text="Mastercode :" Font-Size="15pt" ></asp:Label></td>
              <td class="auto-style12"><asp:TextBox ID="Mastercodetext" runat="server" Height="30px" Width="200px" ></asp:TextBox>
              <br /><asp:RequiredFieldValidator ID="FielValidator" runat="server" ErrorMessage="Enter Master Code" ControlToValidate="Mastercodetext" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
         </tr><tr >
          <td style="padding-left: 80px" class="auto-style9">
              <asp:Label ID="Label6" runat="server" Text="Username :" Font-Size="15pt" ></asp:Label></td>
              <td class="auto-style12"><asp:TextBox ID="UserNametext" runat="server" Height="30px" Width="200px" ></asp:TextBox>
              <br /><asp:RequiredFieldValidator ID="UserFielValidator" runat="server" ErrorMessage="Enter Username" ControlToValidate="UserNametext" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
         </tr>
       <tr>
          <td style="padding-left: 80px" class="auto-style10">
              <asp:Label ID="Label5" runat="server" Text="Password :"  Font-Size="15pt" ></asp:Label></td>
          <td class="auto-style13"> <asp:TextBox ID="Passwordtext" runat="server" Height="30px" Width="200px"></asp:TextBox>
            <br /><asp:RequiredFieldValidator ID="PassFieldValidator" runat="server" ErrorMessage="Enter Password" ControlToValidate="Passwordtext" ForeColor="Red"></asp:RequiredFieldValidator></td> 
          </td>
      </tr> <tr><td colspan="2" align="center"><asp:Label ID="lblans" runat="server" CssClass="lbans" ForeColor="Red"></asp:Label></td></tr>
    
     
        <tr>
        <td class="auto-style14" colspan="2" align="right">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Aindex.aspx">Back To Login</asp:HyperLink>
         </td></tr>
                          
        <tr>
         
          <td colspan="2" style="text-align: center">
               <asp:Button ID="LoginButton" runat="server" Text="Reset" Height="26px" Width="94px" OnClick="Button_Click" style="text-align: center"  />&nbsp;&nbsp;&nbsp;
             
      </tr>
  </table>


    </form>
</body>
</html>
