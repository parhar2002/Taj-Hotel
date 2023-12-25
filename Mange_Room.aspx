<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="Mange_Room.aspx.cs" Inherits="Taj_Hotel.Admin.Mange_Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        .auto-style1 {
            width: 20px;
        }
        .auto-style2 {
            width: 90px;
        }
        .auto-style3 {
            width: 60px;
        }
        .auto-style5 {
            width: 60px;
        }.auto-style6 {
            width: 50px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            width: 193px;
        }.auto-style10 {
            width: 50px;
        }.auto-style11 {
            width: 50px;
        }
           .auto-style13 {
               width: 193px;
           }
           .auto-style14 {
               width: 84px;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table><tr><td style="">
                <table style="width: 300px; height: 400px; background-color: #FFFFFF; ">
                    <tr><td>Admin Manage Room Manage</td></tr><td><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label></td>
                    <tr><td style="font-size: 21px"> Room Name</td><td><asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="181px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    <tr><td style="font-size: 21px"> Room Beds</td><td><asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="181px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Please Enter Beds" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    <tr><td style="font-size: 21px"> Room Views</td><td><asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="181px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Please Enter Views" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    <tr><td style="font-size: 21px"> Room Size</td><td><asp:TextBox ID="TextBox4" runat="server" Height="18px" Width="181px"></asp:TextBox>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" Please Enter Price" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>    
                    <tr><td style="font-size: 21px"> Room Price </td><td><asp:TextBox ID="TextBox5" runat="server"  Height="18px" Width="181px"></asp:TextBox>
                    <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Number " ForeColor="Red" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" Please Enter Price" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>    
                      
                    <tr><td style="font-size: 21px"> Room Descrption</td><td><asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="181px" TextMode="MultiLine"></asp:TextBox> 
                    <br /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" Please Enter Descrption" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
                    <tr><td style="font-size: 21px">Room Image1</td><td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
                    <tr><td style="padding-left: 90px"><asp:Button ID="Insert" runat="server" Text="INSERT" Height="24px" Width="122px" OnClick="Insert_Click" /></td>
                    <tr><td ><asp:Label ID="Label2" runat="server"></asp:Label></td></tr></table>

                    <td><br />
                        
     <table border="0" style="background-color: #6699FF; color: #FFFFFF;">
                    <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label3" runat="server" Text="Id" ></asp:Label>
                     </td>
                     <td class="auto-style2">
                         <asp:Label ID="Label4" runat="server" Text="Room Name" ></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:Label ID="Label5" runat="server" Text="Price"> </asp:Label>
                     </td>
                  <td class="auto-style14">
                      <asp:Label ID="Label6" runat="server" Text="Beds" ></asp:Label>
                      </td><td class="auto-style5">
                      <asp:Label ID="Label14" runat="server" Text="Views" ></asp:Label>
                     </td><td class="auto-style6">
                      <asp:Label ID="Label15" runat="server" Text="Size" ></asp:Label>
                     </td><td class="auto-style7">
                      <asp:Label ID="Label16" runat="server" Text="Image" ></asp:Label>
                     </td>
                     <td class="auto-style8">
                         <asp:Label ID="Label7" runat="server" Text="Discription"></asp:Label>
                     </td>
                     <td class="auto-style10">
                                                    
                        </td>
                     <td class="auto-style11">
                                                   
                        </td>
                     
             </table>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="TableSqlDataSource" RepeatDirection="Horizontal" RepeatColumns="1" >
         <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
         <ItemTemplate>
             <table border="0">
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Room_ID") %>' ></asp:Label>
                     </td>
                
                     <td class="auto-style2">
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("Room_Name") %>' ></asp:Label>
                     </td>
                 
                     
                     <td class="auto-style3">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'> </asp:Label>
                     </td>
                      <td class="auto-style14">
                         <asp:Label ID="Label11" runat="server" Text='<%# Eval("Beds") %>'> </asp:Label>
                     </td>
                      <td class="auto-style5">
                         <asp:Label ID="Label12" runat="server" Text='<%# Eval("Views") %>'> </asp:Label>
                     </td>
                     <td class="auto-style6">
                         <asp:Label ID="Label13" runat="server" Text='<%# Eval("Size") %>'> </asp:Label>
                     </td>
                  <td class="auto-style7">
                      <asp:Label ID="Label5" runat="server" Text='<%# Eval("Image") %>' ></asp:Label>
                       
                     </td>
                     
                     <td class="auto-style13">
                         <asp:Label ID="Label7" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                     </td>  
                       <td class="auto-style10">
                        <asp:LinkButton ID="EditLink" runat="server" CommandArgument='<%# Eval("Room_ID") %>' OnCommand="EditLink_Command" >Edit</asp:LinkButton>

                     </td>
                        <td class="auto-style11" >
                            <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("Room_ID") %>'  ValidationGroup="Forward" OnCommand="Deletelink_Command" >Delete</asp:LinkButton>
                        </td>
             </table>
         </ItemTemplate>
     </asp:DataList>
    <asp:SqlDataSource ID="TableSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
   
                    </td>
                    </tr></table>
                    
                     
                      
</asp:Content>
