<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Taj_Hotel.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Login Page</title>
    <style type="text/css">
        .auto-style6 {
            width: 103%;
        height: 413px;
    }
        .auto-style7 {
            width: 62%;
            height: 390px;
        }
        .auto-style8 {
            height: 390px;
        width: 826px;
    }
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            height: 80px;
        }
        .auto-style12 {
            height: 25px;
            width: 259px;
        }
        .auto-style13 {
            height: 50px;
            width: 259px;
        }
        .auto-style14 {
            width: 259px;
        }
        .auto-style15 {
        width: 1349px;
        height: 470px;
        margin-right: 95px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('image/loginimg.jpg'); background-repeat: no-repeat; background-attachment: fixed" class="auto-style15">    
<table border="0" class="auto-style6">
                <tr ><td class="auto-style7"></td>
                    <td class="auto-style8">
                        <table style=" border: 5px solid #0AEBEF; border-radius: 24px; height:301px; width: 450px; margin-left: 0px; background-color:white" >
      <tr>
          <td colspan="2"  align="center" class="auto-style11" >
              <asp:Label ID="Label3" runat="server" Text=" LOGIN" Font-Size="18pt"  ></asp:Label><br />
              ______________________________________
          </td>
      </tr><tr >
          <td style="padding-left: 80px" class="auto-style9">
              <asp:Label ID="Label4" runat="server" Text="Username :" Font-Size="15pt" ></asp:Label></td>
              <td class="auto-style12"><asp:TextBox ID="UserName" runat="server" Height="30px" Width="200px" ></asp:TextBox>
              <br /><asp:RequiredFieldValidator ID="UserFielValidator" runat="server" ErrorMessage="Enter Username" ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
         </tr>
       <tr>
          <td style="padding-left: 80px" class="auto-style10">
              <asp:Label ID="Label5" runat="server" Text="Password :"  Font-Size="15pt" ></asp:Label></td>
          <td class="auto-style13"> <asp:TextBox ID="Password" runat="server" Height="30px" Width="200px" TextMode="Password"></asp:TextBox>
            <br /><asp:RequiredFieldValidator ID="PassFieldValidator" runat="server" ErrorMessage="Enter Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator></td> 
              
          </td>
      </tr> <tr><td  align="center" colspan="2"><asp:Label ID="lblans" runat="server" CssClass="lbans" ForeColor="Red"></asp:Label></td></tr>
    
     
                                     <tr>
                                    <td class="auto-style14"  align="center">
                                    <asp:Label ID="Label11" runat="server"  Text="New User ?"></asp:Label>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Sign Up</asp:HyperLink>
                                </td>
                                         <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Resetpass.aspx">Forget Password</asp:HyperLink>
                                </td>
                            </tr>
                          
        <tr>
         
          <td colspan="2" style="text-align: center">
               <asp:Button ID="LoginButton" runat="server" Text="Login" Height="26px" Width="94px" OnClick="LoginButton_Click" style="text-align: center"  />&nbsp;&nbsp;&nbsp;
             
      </tr>
  </table>

                       </td>
                </tr>
            </table>
        

    </div>
</asp:Content>
