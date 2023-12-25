<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Offersbooking.aspx.cs" Inherits="Taj_Hotel.Offersbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table border="0" style="width: 100%" bgcolor="#fff">
        <tr>
            <td align="center">
                <br />
                <br />
                <font style="font-family: 'Arial Rounded MT Bold'; color: #663300; font-style: normal;"
                    size="+3">OFFERS BOOKING INFORMATION
                    <br />
                    <hr style="width: 20%" />
                </font>
               
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Offer]"></asp:SqlDataSource>
    
    <asp:ListView ID="ListView1" runat="server" OnItemCommand="LinkButton1"  >
             <ItemTemplate>
                 <table style="width: 500px; height: 400px"  ID="table1" >
                     <tr>
                         <td colspan="2">
                             <asp:Image ID="Image1" runat="server" Height="200px" Width="300px"  ImageUrl='<%# Eval("Image") %>' />

                         </td>
                        </tr>
                        <tr>
                                      <td >
                                          <asp:Label ID="tra" runat="server" Text="Success" Visible="False"></asp:Label>
                                          <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("Offer_ID") %>' Visible="False"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr >
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Maroon" Text="Offer Name :"></asp:Label>
                                      </td>
                                      <td>
                                          <asp:Label ID="NameLabel" runat="server" Font-Size="XX-Large" Text='<%# Eval("Offer_Name") %>'></asp:Label>
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
                                          <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Maroon" Text=" Date :"></asp:Label>
                                      </td>
                                      <td>
                                          <asp:TextBox ID="dateTextBox" runat="server" Height="20px" Width="150px" TextMode="Date"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="FielValidator" runat="server" ErrorMessage="Enter Date" ControlToValidate="dateTextBox" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
              
                                      </td>
                                  </tr>
                      <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="x-Large">BOOK THIS Offers</asp:LinkButton>
                                                     
                        </td>
                       
                    </tr>
                                   
                             </table>
                 
        </ItemTemplate>  
    </asp:ListView>
           
</asp:Content>
