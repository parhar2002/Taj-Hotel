<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Taj_Hotel.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Register Page</title>
    <style type="text/css">
        .auto-style8 {
            width: 212px;
        }
        .auto-style9 {
            width: 157px;
        }
        .auto-style10 {
            width: 157px;
            height: 50px;
        }
        .auto-style11 {
            width: 2%;
            height: 50px;
        }
        .auto-style12 {
            width: 157px;
            height: 51px;
        }
        .auto-style13 {
            width: 2%;
            height: 51px;
        }
        .auto-style14 {
            width: 212px;
            height: 51px;
        }.auto-style15 {
        width: 1349px;
        height: 470px;
        margin-right: 95px;
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="background-image: url('image/loginimg.jpg'); background-repeat: no-repeat; background-attachment: fixed" class="auto-style15">
    <table><tr><td align="center">
        <asp:Label ID="Label1" runat="server" Text="New Register" Font-Size="110px" ForeColor="#993300" Font-Names="Monotype Corsiva" Font-Overline="False"></asp:Label></td>
    <td>
    <table style=" border: 5px solid #0AEBEF; border-radius: 24px; height:301px; width: 850px; ; background-color:white; margin-top:20px" >
     <tr>
            <td align="center" class="auto-style10">
                <font size="+2" color="Maroon">&nbsp;Name ::</font></td>
            <td align="center" class="auto-style11">
                <br />
                <asp:TextBox ID="Namebox" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="fnameFielValidator" runat="server" ErrorMessage="Enter Name" ControlToValidate="Namebox" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
         <td align="center" class="auto-style9">
               <font size="+2" color="Maroon">UserName ::<br />
               </font></td>
            <td align="center" class="auto-style1">
                <asp:TextBox ID="UserNamebox" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="UsernameFielValidator" runat="server" ErrorMessage="Enter Username" ControlToValidate="UserNamebox" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
        <tr>
             <td align="center" class="auto-style8"> <font size="+2" color="Maroon">Email ::</font></td>
            <td align="center" class="auto-style1">
            <asp:TextBox ID="Emailbox" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ErrorMessage="Enter E-mail Id" ControlToValidate="Emailbox" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Emailbox" ErrorMessage="Invalid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
              <td align="center" class="auto-style9" > <font size="+2" color="Maroon">Phone ::</font></td>
            <td align="center" class="auto-style1">
                <asp:TextBox ID="Mobailbox" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="MobailFieldValidator" runat="server" ErrorMessage="Enter Mobail no" ControlToValidate="Mobailbox" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Mobailbox" ErrorMessage="Invalid Mobail No" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            
        </tr>
           <tr>
            <td align="center" class="auto-style12" > <font size="+2" color="Maroon">Password ::
                </font></td>
            <td align="center" class="auto-style13">
               <asp:TextBox ID="Passwordbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="PasswordFieldValidator" runat="server" ErrorMessage="Enter Password" ControlToValidate="Passwordbox" ForeColor="Red"></asp:RequiredFieldValidator></td> 
               <td align="center" class="auto-style14" > <font size="+2" color="Maroon">Re Enter Password ::</font></td>
            <td align="center" class="auto-style13">
               <asp:TextBox ID="Re_Passwordbox" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Passwordbox" ControlToValidate="Re_Passwordbox" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RPasswordFieldValidator" runat="server" ErrorMessage="Re-Enter Password" ControlToValidate="Re_Passwordbox" ForeColor="Red"></asp:RequiredFieldValidator></td> 
               

           </tr>
        
        <tr>
          </td>
         
        
           

           <tr><td colspan="2" align="right"><asp:Button ID="regiButton" runat="server" Text="Create User" OnClick="regiButton_Click"/></td>
               <td>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="Blue" NavigateUrl="~/login.aspx" ValidateRequestMode="Enabled"> Login</asp:HyperLink></td>
           </tr>
    </table>
    </td></tr></table>
                
              
      

</asp:Content>
