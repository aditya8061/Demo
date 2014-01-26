<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewInvitationList.aspx.cs" Inherits="ViewInvitationList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div data-role="fieldcontain">
        <h4>List of Invited People:</h4>
    </div>
    <div data-role="fieldcontain">

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmailID" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <li style="">EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">EmailID:
                    <asp:Label ID="EmailIDLabel1" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">EmailID:
                    <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="">EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonConnectionString %>" SelectCommand="SELECT * FROM [Invitation] ORDER BY [EmailID]"></asp:SqlDataSource>

    </div>
    </form>
</asp:Content>

