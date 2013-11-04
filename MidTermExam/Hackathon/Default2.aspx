<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    
</head>
<body>
    <div class="page" data-role="page">
            <div data-role="header">
            <h1>Gift Finder App</h1>
            </div>

            <div data-role="content" >

    <form id="LoginForm" runat="server">
        <div data-role="fieldcontain">
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    <div data-role="fieldcontain">
        <label for="txtEmailId">EmailID:</label>
        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <label for="txt_UserPswd">Password:</label>
        <asp:TextBox ID="txt_UserPswd" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    <div data-role="fieldcontain">
        <asp:Button ID="btn_Submit" runat="server" Text="Login" OnClick="btn_Submit_Click"/>
    </div>
        <div data-role="fieldcontain">
            <h4>OR</h4>
        </div>
        <div data-role="fieldcontain">
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />

        </div>
        </form>
                </div>
        <div data-role="footer" data-position="fixed">
            <h4>&copy; Aditya Deshpande</h4>
            </div>
            
            </div>
    </body>


    </html>