<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GiftsList.aspx.cs" Inherits="GiftsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="GiftFormList" runat="server">
    <div data-role="fieldcontain">
        <h4>Wish List</h4>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="GiftId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <li style="">GiftId:
                    <asp:Label ID="GiftIdLabel" runat="server" Text='<%# Eval("GiftId") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">GiftId:
                    <asp:Label ID="GiftIdLabel1" runat="server" Text='<%# Eval("GiftId") %>' />
                    <br />
                    ProductName:
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
                <li style="">GiftId:
                    <asp:Label ID="GiftIdLabel" runat="server" Text='<%# Eval("GiftId") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                <li style="">GiftId:
                    <asp:Label ID="GiftIdLabel" runat="server" Text='<%# Eval("GiftId") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonConnectionString %>" DeleteCommand="DELETE FROM [GiftList_Hackathon] WHERE [GiftId] = @GiftId" InsertCommand="INSERT INTO [GiftList_Hackathon] ([ProductName]) VALUES (@ProductName)" SelectCommand="SELECT * FROM [GiftList_Hackathon] ORDER BY [GiftId]" UpdateCommand="UPDATE [GiftList_Hackathon] SET [ProductName] = @ProductName WHERE [GiftId] = @GiftId">
                <DeleteParameters>
                    <asp:Parameter Name="GiftId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="GiftId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>

        </form>
        
</asp:Content>

