<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InCart.aspx.cs" Inherits="_202_UserMaintenance.Order" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
<div class="text-right" role="alert" style="width: 801px">
  <button class="close" data-dismiss="alert" aria-label="Close" style="font-size: xx-large; background-color: #FFFFFF; color: #FF0000;">
    <span aria-hidden="true" style="background-color: #FFFFFF">&times;</span></div>
  </button>
    <br />
    <br />
  <strong><span style="font-size: xx-large; background-color: #FFFFFF">&nbsp;&nbsp; </span><span style="font-size: large; background-color: #FFFFFF">NEW ARRIVALS WILL COME OUT ON DECEMBER 31, 2019</span></strong></div>
     
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" style="font-size: larger" Text="COMNG SOON"></asp:Label>
        <br />
        <br />

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="left: 50px; top: 3px; width: 739px; height: 179px" dir="auto">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="left: 0px; top: 0px; height: 180px">
    <div class="item active">
      <img src="Images/1.jpg" alt="..." style="width: 739px; height: 225px">
      <div class="carousel-caption">
        ...
      </div>
    </div>

    <div class="item">
      <img src="Images/2.jpg" alt="..." style="width: 735px; height: 215px">
      <div class="carousel-caption">
        ...
      </div>
    </div>

      <div class="item">
      <img src="Images/3.jpg" alt="..." style="width: 735px; height: 215px">
      <div class="carousel-caption">
        ...
      </div>
    </div>

      <div class="item">
      <img src="Images/4.jpg" alt="..." style="width: 735px; height: 215px">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="left: 3px; top: 2px; bottom: -2px" >
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
      
        <br />
        <br />
        <br />
      
        <br />
        <br />
       
      


        <span style="font-size: medium; text-decoration: underline"><strong>YOU SELECTED:</strong></span><br />
       
       
      


        <!--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("imageid") %>'></asp:Label>
             <asp:Label ID="Label2" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
             <asp:Label ID="Label3" runat="server" Text='<%# Eval("qty") %>'></asp:Label> <asp:Label ID="Label4" runat="server" Text='<%# Eval("imageid") %>'></asp:Label>
             <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label> <asp:Label ID="Label6" runat="server" Text='<%# Eval("imageid") %>'></asp:Label>

        </ItemTemplate>
           </asp:Repeater>-->
        <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCFF" BorderColor="#CC33FF" BorderWidth="4px" DataKeyField="productId" DataSourceID="SqlDataSource1" GridLines="Both">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td rowspan="2" style="width: 111px">
                        <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl='<%# Eval("imageid") %>' Width="220px" />
                    </td>
                    <td><strong>ITEM #:</strong>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("productId") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>JMD:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [imageid], [productId], [price] FROM [product] WHERE ([productId] = @productId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productId" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
                    <asp:Button ID="Button2" runat="server" Height="53px" PostBackUrl="~/Order.aspx" Text="Back" Width="177px" style="font-size: small" />
    <br />
        <br />
                    <button type="Button1" class="btn btn-primary" dir="ltr" style="width: 157px; height: 53px">
  Continue <span class="badge badge-light">3</span>
</button>
        <br />
        <br />
        <br />
        <br />

   
       
      


        <br />
       
      


        <br />
        <br />
        <br />
        <br />
               
      


    </asp:Content>
