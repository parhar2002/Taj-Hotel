<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Roombooking.aspx.cs" Inherits="Taj_Hotel.Roombooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <style type="text/css">
        .auto-style5 {
            width: 167px;
        }
        .auto-style6 {
            width: 361px;
            height: 400px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
    
    <asp:ListView ID="ListView1" runat="server" OnItemCommand="LinkButton1"  >
             <ItemTemplate>
                 <table style="width: 400px; height: 400px"  ID="table1" >
                     <tr>
                         <td colspan="2">
                             <asp:Image ID="Image1" runat="server" Height="200px" Width="300px"  ImageUrl='<%# Eval("Image") %>' />

                         </td>
                        </tr>
                        <tr>
                                      <td >
                                          <asp:Label ID="tra" runat="server" Text="Success" Visible="False"></asp:Label>
                                          <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("Room_ID") %>' Visible="False"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr >
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Maroon" Text="Room Name :"></asp:Label>
                                      </td>
                                      <td>
                                          <asp:Label ID="NameLabel" runat="server" Font-Size="XX-Large" Text='<%# Eval("Room_Name ") %>'></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Maroon" Text=" Price :"></asp:Label>
                                      </td>
                                      <td>
                                          <asp:Label ID="priceLabel" runat="server" Font-Size="X-Large" Text='<%# Eval("Price") %>'></asp:Label>
                                      ₹</td>
                                  </tr>
                                    <tr>
                                      <td>
                                          <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Maroon" Text=" Check IN :"></asp:Label>

                                      </td>
                                      <td>
                                          <asp:TextBox ID="dateTextBox" runat="server" Height="20px" Width="150px" TextMode="Date"></asp:TextBox><br />
                                          <asp:RequiredFieldValidator ID="FielValidator" runat="server" ErrorMessage="Enter Check In Date" ControlToValidate="dateTextBox" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                                          
                                      </td>
                                  </tr><tr>
                                      <td>
                                          <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Maroon" Text=" Check Out :"></asp:Label>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px" TextMode="Date"></asp:TextBox><br />
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Check Out Date" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
              
                                      </td>
                                  </tr>
                      <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="X-Large">BOOK THIS Offers</asp:LinkButton>
                                                     
                        </td>
                       
                    </tr>
                                   
                             </table>
                 
        </ItemTemplate>  
             <LayoutTemplate>
                 <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
             </LayoutTemplate>
    </asp:ListView>
           
   </asp:Content>
