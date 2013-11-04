<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SendGift.aspx.cs" Inherits="SendGift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="GiftSearchForm" runat="server">
    <div data-role="fieldcontain">
        <label>Enter Product Name:</label>
        <asp:TextBox runat="server" ID="txtSearch"></asp:TextBox>
        </div>
        <div data-role="fieldcontain">
        <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click" />
            </div>
    
    <div data-role="fieldcontain">
        <label>Results:</label>
    </div>
    <div data-role="fieldcontain">
        <label>Title:</label>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <label>EAN:</label>
        <asp:TextBox ID="txtEAN" runat="server"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <label>ISBN:</label>
        <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <label>Price:</label>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    </div>
</form>
</asp:Content>

