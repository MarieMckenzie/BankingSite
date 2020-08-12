<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="_202_UserMaintenance.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

       <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
 
        <h1 style="text-decoration: underline">CHECKOUT</h1>
        <span style="font-size: large">
       <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Cart2.aspx">Go Back to Cart</asp:LinkButton>
        <br />
        </span>
        <br />
        <br />
        <div class="text-center" role="alert" style="background-position: 3px -171px; width: 712px; height: 91px; background-image: url('Images/FemaleRedBasic.png');">
  <button class="close" data-dismiss="alert" aria-label="Close" style="font-size: xx-large; background-color: #FFFFFF; color: #FF0000;">
      <div class="text-right">
    <span aria-hidden="true" style="background-color: #FFFFFF">&times;</span></div>
  </button>
    <br />
    <br />
  <strong><span style="font-size: xx-large; background-color: #FFFFFF">&nbsp;&nbsp; </span><span style="font-size: large; background-color: #FFFFFF; color: #03403B;">YOUR ITEM WILL ARRIVE WITHIN 10-20 WORKING DAYS</span></strong></div>
       <span style="font-size: large"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <br />
        YOUR TOTAL IS: <!-- TO BE BOUND TO TOTAL COMNG FROM CART STORE PROCEDURE-->
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
       <br />
        </strong>
        <table class="nav-justified" style="background-position: center 9px; width: 100%; height: 1293px; background-image: url('Images/PerfectBgd.jpg'); color: #FFFFFF;">
            <tr>
                <td colspan="2"><span style="text-decoration: underline"><strong><em>BILLING INFORMATION</em></strong></span><br />
                    <br />
                    NAME:</span><br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="1056px" style="font-size: large">
                    </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox1" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><span style="font-size: large">ADDRESS 1:<br />
                    </span><asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="704px" style="font-size: large"></asp:TextBox>
       <span style="font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName0" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox2" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </span>
                </td>
                <td style="width: 1056px"><span style="font-size: large">ADDRESS 2:<br />
                    <asp:TextBox ID="TextBox9" runat="server" Height="33px" Width="704px" style="font-size: large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName1" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox9" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td><span style="font-size: large">EMAIL:<br />
                    </span>
                    <asp:TextBox ID="TextBox4" runat="server" Height="36px" Width="704px" style="font-size: large"></asp:TextBox>
                    <span style="font-size: large">
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName2" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox4" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </span>
                </td>
                <td style="width: 1056px"><span style="font-size: large">PHONE : 1-876-222-333<br />
                    <asp:TextBox ID="TextBox10" runat="server" Height="36px" Width="525px" style="font-size: large"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName3" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox10" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    </span>
                </td>
            </tr>
            <tr>
                <td><strong><em>
                    <br />
                    <br style="text-decoration: underline" />
                    <span style="text-decoration: underline">CARD INFORMATION:</span></em></strong></td>
                <td class="text-right" style="width: 1056px"><span style="font-size: small">ACCEPTED</span><span style="font-size: medium"> </span>
            </span>
       <span style="font-size: small">PAYMENTS</span><span style="font-size: large"><span style="font-size: medium">: </span>
        <span style="font-size: large">
                    <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="Images/Mastercard.png" Width="52px" />
&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Images/Visa.png" Width="52px" />
                    <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="Images/Paypal.jpg" Width="52px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">NAME ON CARD: <span style="font-size: large">
                    <br />
                    <asp:TextBox ID="TextBox11" runat="server" Height="35px" Width="1056px" style="font-size: large"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName4" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox1" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </span>
            <tr>
                <td colspan="2"><span style="font-size: large">CARD NUMBER:</span>
     
        <span style="font-size: large">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="315px" style="font-size: large"></asp:TextBox>
                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName5" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox7" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CCV:
                    <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="97px" style="font-size: large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName6" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox8" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </span></td>
            </tr>
            <tr>
                <td>
                    <div class="text-right">
                        <div class="text-left">
                            EXPIRY DATE :
                            <asp:TextBox ID="TextBox12" runat="server" Text="dd/mm/yyy"></asp:TextBox>
       <span style="font-size: large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName7" runat="server" ErrorMessage="REQUIRED!" CssClass="danger" ControlToValidate="TextBox2" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </span>
                        </div>
                    </div>
                    <div>
                        <br /> <!-- alert to say order placed-->
                        <br />
                    </div>
                <td style="width: 1056px;" class="text-right">&nbsp;


                        <asp:Button ID="Button1" runat="server" Text="Submit" PostBackUrl="~/Default.aspx" Height="72px" style="font-size: large" Width="157px" />
                        </asp:Content>
