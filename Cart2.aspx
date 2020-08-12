<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart2.aspx.cs" Inherits="_202_UserMaintenance.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
 
        <h1>YOUR CART</h1>
    
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Order.aspx">Click Here to Continue Shopping</asp:HyperLink> 
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="#99CCFF" BorderColor="Blue" BorderStyle="Solid" BorderWidth="4px" GridLines="Both">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td style="border-width: 3px; border-style: solid;"><strong>Product</strong></td>
                        <td style="border-width: 3px; border-style: solid"><strong>ID</strong></td>
                        <td style="border-width: 3px; border-style: solid"><strong>Cost</strong></td>
                    </tr>
                    <tr>
                        <td style="border-width: 3px; border-style: solid; width: 215px">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("cImageid") %>' Width="200px" />
                        </td>
                        <td style="border-width: 3px; border-style: solid">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("cProductId") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: x-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CART TOTAL:
        <asp:Label ID="SumPriceInLoop" runat="server" Text='<%# Eval("price").Sum() %>'></asp:Label>
        </span>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [CartView]"></asp:SqlDataSource>
        <br />
        <br />
        <table style="width: 48%">
            <tr>
                <td style="width: 424px">
                    <asp:Button ID="Button2" runat="server" Height="63px" PostBackUrl="~/Order.aspx" Text="GO BACK TO FRAMES" Width="298px" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="63px" PostBackUrl="Checkout.apsx" Text="CONTINUE TO CHECKOUT" Width="298px" />
                </td>
            </tr>
        </table>
        <br />
        <br />


    </asp:Content>
