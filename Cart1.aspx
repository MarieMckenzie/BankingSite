<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart1.aspx.cs" Inherits="_202_UserMaintenance.Cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
       
</asp:Content>
