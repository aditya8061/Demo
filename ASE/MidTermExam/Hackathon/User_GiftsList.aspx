<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_GiftsList.aspx.cs" Inherits="User_GiftsList_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div data-role="fieldcontain">
        <h4>Wish Gift List:</h4>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <li style="">ProductName:
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">ProductName:
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
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
                    <li style="">ProductName:
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonConnectionString %>" SelectCommand="SELECT [ProductName] FROM [GiftList_Hackathon] ORDER BY [ProductName]"></asp:SqlDataSource>
            </p>
    </div>
        <div data-role="fieldcontain">
            <a href="SendGift.aspx" data-role="button">Get Gift Details</a>
        </div>

    </form>


</asp:Content>

