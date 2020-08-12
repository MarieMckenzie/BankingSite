<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="_202_UserMaintenance.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
 
        <h1>Order</h1>
    <!--(All users can access this page)-->

        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                You are logged in<br />
            </LoggedInTemplate>
            <AnonymousTemplate>
                You are not logged in<br />
            </AnonymousTemplate>
        </asp:LoginView>
       
        <br />
        <br />
       <table class="auto-style1">
            <tr>
                <td>SHOP BY CATEGORY :&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server">WOMEN</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="LinkButton2_Click()">MEN</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server">ALL</asp:LinkButton>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Height="488px" style="margin-right: 373px" Width="1372px" BackColor="#99CCFF" BorderColor="#000099" BorderStyle="Solid" BorderWidth="10px" RepeatColumns="2" GridLines="Both">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: center">
                            <br />
                            <br />
                            <asp:Image ID="Image1" runat="server" BackColor="Blue" Height="300px" ImageAlign="Middle" ImageUrl='<%# Eval("imageid") %>' style="text-align: center" Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                            Item #:
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("prductName") %>' style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("productDescription") %>' style="font-style: italic"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; font-weight: 700;">
                            JMD:
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                         <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl='~/InCart.aspx' Height="109px" ImageUrl="~/Images/Add.png" Width="178px" CommandArgument='<%# Eval("productid")%> ' CommandName="viewProduct"  />
                     
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </asp:Content>
