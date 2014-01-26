<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="EventDetailsForm" runat="server">
         <div data-role="fieldcontain">
            <h4>
                Event Details:</h4>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EventId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <li style="">EventId:
                        <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                        <br />
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">EventId:
                        <asp:Label ID="EventIdLabel1" runat="server" Text='<%# Eval("EventId") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
<br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">EventId:
                        <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                        <br />
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
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
                    <li style="">EventId:
                        <asp:Label ID="EventIdLabel" runat="server" Text='<%# Eval("EventId") %>' />
                        <br />
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonConnectionString %>" DeleteCommand="DELETE FROM [Event_Hackathon] WHERE [EventId] = @EventId" InsertCommand="INSERT INTO [Event_Hackathon] ([Name], [Description], [Address]) VALUES (@Name, @Description, @Address)" SelectCommand="SELECT * FROM [Event_Hackathon] ORDER BY [EventId]" UpdateCommand="UPDATE [Event_Hackathon] SET [Name] = @Name, [Description] = @Description, [Address] = @Address WHERE [EventId] = @EventId">
                    <DeleteParameters>
                        <asp:Parameter Name="EventId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="EventId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            </div>
        
                 
        

        
        </form>
    </asp:Content>

