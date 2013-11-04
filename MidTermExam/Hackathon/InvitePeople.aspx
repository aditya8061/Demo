<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InvitePeople.aspx.cs" Inherits="InvitePeople" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="InvitePeopleForm" runat="server">
        <div data-role="fieldcontain">
            <h4>Invite People</h4>
        </div>
        <div data-role="fieldcontain">
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
        <div data-role="fieldcontain">
            <label for="txtEmailId">EmailId:</label>
            <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
        </div>
        <div data-role="fieldcontain">
            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
       
               
        <div data-role="fieldcontain">
          
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                <asp:Button ID="btnViewInvitations" runat="server" Text="View Invitation List" OnClick="btnViewInvitations_Click" />
                
        
     </form>

</asp:Content>

