<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="OfferManage.aspx.cs" Inherits="Taj_Hotel.Admin.OfferManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 20px;
        }
        .auto-style2 {
            width: 80px;
        }
        .auto-style3 {
            width: 70px;
        }
        .auto-style4 {
            width: 50px;
        }
        .auto-style5 {
            width: 150px;
        }
        .auto-style6 {
            width: 100px;
        }
        .auto-style7 {
            width: 220px;
        }
        .auto-style8 {
            width: 40px;
        }
        .auto-style9 {
            width: 30px;
        }
        .auto-style10 {
            width: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table><tr><td><br />
               <table style="width: 300px; height: 420px; background-color: #FFFFFF;" align="left">
                   <tr><td class="auto-style3" style="background-color: #f6f6f6">Admin Manage Offers Manage </td></tr>
                   <tr><td><asp:Label ID="Label1" runat="server"  Visible="False"></asp:Label></td></tr>
                   <tr><td  style="font-size: 21px"> Offers Name</td><td><asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="181px"></asp:TextBox>
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                   <tr><td  style="font-size: 21px"> Discount </td><td><asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="181px"></asp:TextBox>
                   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Number " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Please Enter Discount" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>    
                   <tr><td  style="font-size: 21px"> Main Price </td><td><asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="181px"></asp:TextBox>
                   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Number " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Please Enter Price" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>       
                   <tr><td  style="font-size: 21px"> Discount Price</td><td><asp:TextBox ID="TextBox4" runat="server" Height="18px" Width="181px"></asp:TextBox>
                   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Number " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Please Enter Discount Price" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>    
                   <tr><td style="font-size: 21px"> Offers&nbsp; Valid</td><td><asp:TextBox ID="TextBox5" runat="server"  Height="18px" Width="183px" TextMode="Date"></asp:TextBox>
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" Please Select Date" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>  
                   <tr><td  style="font-size: 21px"> Offer Facelity </td><td><asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="181px" TextMode="MultiLine"></asp:TextBox> 
                   <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" Please Enter Facelity" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                   <tr><td class="auto-style5" style="font-size: 21px">Offers Image1</td><td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
                   <tr><td style="padding-left: 90px"><asp:Button ID="Insert" runat="server" Text="INSERT" Height="24px" Width="122px" OnClick="Insert_Click" /></td></tr>
               
                  <tr><td colspan="2"class="auto-style4" style="padding-left: 150px">
                       <asp:Label ID="Label2" runat="server"></asp:Label>
                       
                       </td><td>
                           </td></tr>   
               </table></td>
                    
                <td></br>
                    <table border="0" style="background-color: #6699FF; color: #FFFFFF; ">
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label3" runat="server" Text="Id" ></asp:Label>
                     </td>
                
                     <td class="auto-style2">
                         <asp:Label ID="Label4" runat="server" Text="Offers" ></asp:Label>
                     </td>
                 
                     
                     <td class="auto-style3">
                         <asp:Label ID="Label5" runat="server" Text="Price"> </asp:Label>
                     </td>
                      <td class="auto-style4">
                         <asp:Label ID="Label6" runat="server" Text="Offer Price"> </asp:Label>
                     </td>
                  <td class="auto-style5">
                      <asp:Label ID="Label7" runat="server" Text="Image" ></asp:Label>
                       </td>
                     
                     <td class="auto-style6">
                         <asp:Label ID="Label8" runat="server" Text="Offer Valid"></asp:Label>
                     </td>
                 
                     <td class="auto-style7">
                         <asp:Label ID="Label9" runat="server" Text="Facelity"></asp:Label>
                     </td>
                        <td class="auto-style8">                            
                         <asp:Label ID="Label10" runat="server" Text="Discount"></asp:Label>
                         </td>
                     <td class="auto-style9">
                                                   
                        </td>
                     <td class="auto-style10">
                                                   
                        </td>
             </table>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource" RepeatDirection="Horizontal" RepeatColumns="1" >
         <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
         <ItemTemplate>
             <table border="0"">
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label13" runat="server" Text='<%# Eval("Offer_ID") %>' ></asp:Label>
                     </td>
                
                     <td class="auto-style2">
                         <asp:Label ID="Label14" runat="server" Text='<%# Eval("Offer_Name") %>' ></asp:Label>
                     </td>
                 
                     
                     <td class="auto-style3">
                         <asp:Label ID="Label15" runat="server" Text='<%# Eval("Price") %>'> </asp:Label>
                     </td>
                     <td class="auto-style4">
                         <asp:Label ID="Label16" runat="server" Text='<%# Eval("Offer_Price") %>'> </asp:Label>
                     </td>
                  <td class="auto-style5">
                      <asp:Label ID="Label17" runat="server" Text='<%# Eval("Image") %>' ></asp:Label>
                       
                     </td>
                     
                     <td class="auto-style6">
                         <asp:Label ID="Label18" runat="server" Text='<%# Eval("Offer_valid") %>'></asp:Label>
                     </td>
                     <td class="auto-style7">
                         <asp:Label ID="Label19" runat="server" Text='<%# Eval("Offer_Facelity") %>'></asp:Label>
                     </td>
                     <td class="auto-style8">
                         <asp:Label ID="Label20" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
                     </td>
                     <td class="auto-style9" >  
                     <asp:LinkButton ID="EditLink" runat="server" CommandArgument='<%# Eval("Offer_ID") %>' OnCommand="EditLink_Command" >Edit</asp:LinkButton>
                     </td>
                     <td class="auto-style10" >  
                     <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("Offer_ID") %>'  ValidationGroup="Forward" OnCommand="Deletelink_Command">Delete</asp:LinkButton>
                     </td>
             </table>
         </ItemTemplate>
     </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Offer]"></asp:SqlDataSource>
   
                </td>
        </tr></table>
 

</asp:Content>
