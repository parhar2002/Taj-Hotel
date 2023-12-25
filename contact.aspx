<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Taj_Hotel.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 50%;
            height: 5px;
        }
        .auto-style6 {
            width: 50%;
            height: 2px;
        }
        .auto-style9 {
            width: 50%;
        }
        .auto-style10 {
            width: 50%;
            height: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table style="width:100%; height:100%" border="0" bgcolor="#fff">
    <tr>
       
          <td style="width:33%">
                <h1>TAJ Beach Resort</h1>
                <h4>Varca Beach, Salcete, Goa 403 721,</h4> 
                <h4>India</h4>
                <h4>Tel :+91-832-669 5000</h4>
                <h4>Fax: +91(0)832-669 5699</h4>
                <h4>E-mail: Tajbeachresortgoa@advanihotels.com</h4>
         </td> 
        <td>
            
<table style="width:100%" border="0" cellspacing=20 bgcolor="#fff">
    <tr>
        <td colspan="2" align="center">
            <font size="+3" color="black">Feed Back</font>
            <asp:Label ID="Label2" runat="server" Visible="False" ></asp:Label>
    </tr>
    <tr>
        <td align="right" class="auto-style5">
           <font size="+2" color="Maroon">Username ::</font>
           
        </td>
        <td align="left" class="auto-style5">
            <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
        
    </tr>
    
    
    
    </tr>
    <tr>
         <td align="right" class="auto-style10">
           <font size="+2" color="Maroon">Suggestions ::</font>
        </td>
        <td align="left" class="auto-style10">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
   
    </tr>
</table>
<table border="0" style="width:100%" bgcolor="#fff">
    <tr>
        
        <td align="right" class="auto-style9">
            <asp:Button ID="Button2" runat="server" Text="Send" onclick="Button2_Click" />
        </td>
        <td align="left" class="auto-style9">
            </td>
    </tr>
</table>

        </td>
    </tr>
</table>

</asp:Content>
