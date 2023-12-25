﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="EventMange.aspx.cs" Inherits="Taj_Hotel.Admin.EventMange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
        .auto-style1 {
            width: 21px;
        }
        .auto-style2 {
            width: 89px;
        }
        .auto-style3 {
            width: 60px;
        }
        .auto-style4 {
            width: 60px;
        }        
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            width: 300px;
        }
        .auto-style7 {
            width: 62px;
        }
        .auto-style8 {
            width: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr><td >
    <table style="width: 300px; height: 400px; background-color: #FFFFFF;" align="center">
                   <tr>
                       <td colspan="4" class="auto-style3" style="background-color: #f6f6f6">Admin Manage Event Manage </td>
                   </tr>
                   <tr><td><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td></tr> 
                   <tr><td  style="font-size: 21px"> Event Name</td><td><asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="181px"></asp:TextBox> 
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                   <tr><td  style="font-size: 21px"> Event Price </td><td><asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="181px"></asp:TextBox>
                       <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Number " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                       <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Please Enter Price" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>    
                       <tr><td  style="font-size: 21px"> Event Capacity </td><td><asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="181px"></asp:TextBox>
                       <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Capecity " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                       <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Please Enter Price" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                        <tr><td  style="font-size: 21px"> Event Discription </td><td><asp:TextBox ID="TextBox4" runat="server" Height="59px" Width="181px" TextMode="MultiLine"></asp:TextBox>
                     <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Please Enter Discrption" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                  <tr><td class="auto-style5" style="font-size: 21px">Room Image1</td><td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
                  <tr><td style="padding-left: 90px" class="auto-style1"><asp:Button ID="Insert" runat="server" Text="INSERT" Height="24px" Width="122px" OnClick="Insert_Click" /></td>
                      <td class="auto-style1">&nbsp;</td></tr>

                  <tr><td colspan="2"class="auto-style4" style="padding-left: 150px">
                       <asp:Label ID="Label2" runat="server"></asp:Label>
                       
                       </td><td>
                           </td></tr>
               </table>
           </td></br>
        <td>
                    
     <table border="0" style="background-color: #6699FF; color: #FFFFFF;   ">
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label3" runat="server" Text="Id" ></asp:Label>
                     </td>
                
                     <td class="auto-style2">
                         <asp:Label ID="Label4" runat="server" Text="Table Name" ></asp:Label>
                     </td>
                 
                     
                     <td class="auto-style3">
                         <asp:Label ID="Label5" runat="server" Text="Price"> </asp:Label>
                     </td>
                      <td class="auto-style4">
                         <asp:Label ID="Label6" runat="server" Text="Capacity"> </asp:Label>
                     </td>
                  <td class="auto-style5">
                      <asp:Label ID="Label7" runat="server" Text="Image" ></asp:Label>
                       
                     </td>
                     
                     <td class="auto-style6">
                         <asp:Label ID="Label8" runat="server" Text="Discription"></asp:Label>
                     </td>
                 
                        <td class="auto-style7">                            
                         
                         </td>
                     <td class="auto-style8">
                                                   
                        </td>
             </table>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource" RepeatDirection="Horizontal" RepeatColumns="1"  >
         <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
         <ItemTemplate>
             <table border="0" >
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label11" runat="server" Text='<%# Eval("Event_ID ") %>' ></asp:Label>
                     </td>
                
                     <td class="auto-style2">
                         <asp:Label ID="Label12" runat="server" Text='<%# Eval("Event_Name ") %>' ></asp:Label>
                     </td>
                 
                     
                     <td class="auto-style3">
                         <asp:Label ID="Label13" runat="server" Text='<%# Eval("Price") %>'> </asp:Label>
                     </td>
                     
                  <td class="auto-style4">
                      <asp:Label ID="Label14" runat="server" Text='<%# Eval("Capacity") %>' ></asp:Label>
                       
                     </td>
                  <td class="auto-style5">
                      <asp:Label ID="Label15" runat="server" Text='<%# Eval("Image") %>' ></asp:Label>
                       
                     </td>
                     
                     <td class="auto-style6">
                         <asp:Label ID="Label16" runat="server" Text='<%# Eval("Discription") %>'></asp:Label>
                     </td>
                    <td class="auto-style7">
                        <asp:LinkButton ID="EditLink" runat="server" CommandArgument='<%# Eval("Event_ID") %>' OnCommand="EditLink_Command">Edit</asp:LinkButton>

                     </td>
                        <td class="auto-style8" >
                            <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("Event_ID") %>'  ValidationGroup="Forward" OnCommand="Deletelink_Command">Delete</asp:LinkButton>
                        </td>
             </table>
         </ItemTemplate>
     </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
   
        </td>
           </tr></table>
</asp:Content>
