<%@ Page Title="New Supplier" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Newsupplier.aspx.vb" Inherits="Newsupplier" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">




    <br />
   
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ProjectDatabaseNew.mdb" DeleteCommand="DELETE FROM [Suppliers] WHERE ([SupplierID] = ? )" InsertCommand="INSERT INTO [Suppliers] ([SupplierID], [SupplierName], [SupplierAddress], [Phone], [Country]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Suppliers]" UpdateCommand="UPDATE [Suppliers] SET [SupplierName] = ?, [SupplierAddress] = ?, [Phone] = ?, [Country] = ? WHERE [SupplierID] = ? ">
        <DeleteParameters>
            <asp:Parameter Name="SupplierID" Type="String" />       
            <asp:Parameter Name="SupplierName" Type="String" />
            <asp:Parameter Name="SupplierAddress" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SupplierID" Type="String" />
            <asp:Parameter Name="SupplierName" Type="String" />
            <asp:Parameter Name="SupplierAddress" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SupplierName" Type="String" />
            <asp:Parameter Name="SupplierAddress" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="SupplierID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SupplierID" DataSourceID="AccessDataSource1" AllowPaging="True">
        <EditItemTemplate>
            SupplierID:
            <asp:Label ID="SupplierIDLabel1" runat="server" Text='<%# Eval("SupplierID") %>' />
            <br />
            SupplierName:
            <asp:TextBox ID="SupplierNameTextBox" runat="server" Text='<%# Bind("SupplierName") %>' />
            <br />
            SupplierAddress:
            <asp:TextBox ID="SupplierAddressTextBox" runat="server" Text='<%# Bind("SupplierAddress") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
            <br />
            <br />
            SupplierName:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SupplierNameTextBox" runat="server" Text='<%# Bind("SupplierName") %>' />
            <br />
            <br />
            SupplierAddress:&nbsp;
            <asp:TextBox ID="SupplierAddressTextBox" runat="server" Text='<%# Bind("SupplierAddress") %>' />
            <br />
            <br />
            Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            <br />
            Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SupplierID:
            <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Eval("SupplierID") %>' />
            <br />
            SupplierName:
            <asp:Label ID="SupplierNameLabel" runat="server" Text='<%# Bind("SupplierName") %>' />
            <br />
            SupplierAddress:
            <asp:Label ID="SupplierAddressLabel" runat="server" Text='<%# Bind("SupplierAddress") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <br />
    <br />
    <br />




</asp:Content>