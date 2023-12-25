<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="user_gallary" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Gallary Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" style="width:100%"  bgcolor="#fff" >
<tr>
    <td align="center">
    
    <font size="+3" style="font-family: Andalus; color: #4F2700; text-decoration: underline;">Gallery</font>
    <br />
    </td>
</tr>
</table>
<table border="0" style="width:100%"   bgcolor="#fff">
<tr>
    
    
    <td align=center >
   <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/image/g1.jpg" Height="300px" Width="400px" />
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/image/g2.jpg"  Height="300px" Width="400px"/>
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/image/g3.jpg" Height="300px" Width="400px"/>
    </td>
</tr>
<tr>
    
    
    <td align=center >
   <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/g4.jpg" Height="300px" Width="400px" />
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/image/g5.jpg"  Height="300px" Width="400px"/>
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image6" runat="server" ImageUrl="~/image/g6.jfif" Height="300px" Width="400px"/>
    </td>
</tr>


<tr>
    
    
    <td align=center >
   <br />
        <asp:Image ID="Image7" runat="server" ImageUrl="~/image/g7.jpg" Height="300px" Width="400px" />
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image8" runat="server" ImageUrl="~/image/g8.jpeg"  Height="300px" Width="400px"/>
    </td>
    <td align=center>
   <br />
        <asp:Image ID="Image9" runat="server" ImageUrl="~/image/g9.jpg" Height="300px" Width="400px"/>
    </td>
</tr>
</table>

</asp:Content>

