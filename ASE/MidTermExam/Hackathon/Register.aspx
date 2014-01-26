<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="RegisterForm" runat="server">
        <div data-role="fieldcontain">
            <h4>Enter Your Details</h4>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>
    <div data-role="fieldcontain">
        <label for="txtEmailId">EmailID:</label>
        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
    </div>
     
    <div data-role="fieldcontain">
        <label>Name:</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <label for="txt_UserPswd">Password:</label>
        <asp:TextBox ID="txt_UserPswd" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
        </div>

        </form>
</asp:Content>

