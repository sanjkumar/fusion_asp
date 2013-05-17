<%@ Page Title="Edit Stock" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="editstock.aspx.vb" Inherits="editstock" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h3> Welcome to Samrt Solutions</h3>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="StockID" DataSourceID="AccessDataSource2" Height="191px" Width="249px" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
    <EditItemTemplate>
        StockID:
        <asp:Label ID="StockIDLabel1" runat="server" Text='<%# Eval("StockID") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        Stock_level:
        <asp:TextBox ID="Stock_levelTextBox" runat="server" Text='<%# Bind("Stock_level") %>' />
        <br />
        SupplierID:
        <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <InsertItemTemplate>
        StockID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="StockIDTextBox" runat="server" Text='<%# Bind("StockID") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="StockIDTextBox" ErrorMessage="Please enter StockID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Description:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DescriptionTextBox" ErrorMessage="Enter description" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PriceTextBox" ErrorMessage="Please enter price" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Stock_level:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Stock_levelTextBox" runat="server" Text='<%# Bind("Stock_level") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Stock_levelTextBox" ErrorMessage=" Please enter Srock Level" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="SupplierIDTextBox" ErrorMessage="Please enter Supplier ID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        StockID:
        <asp:Label ID="StockIDLabel" runat="server" Text='<%# Eval("StockID") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        Stock_level:
        <asp:Label ID="Stock_levelLabel" runat="server" Text='<%# Bind("Stock_level") %>' />
        <br />
        SupplierID:
        <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
</asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/ProjectDatabaseNew.mdb" DeleteCommand="DELETE FROM [Stock] WHERE ([StockID] = ? )" InsertCommand="INSERT INTO [Stock] ([StockID], [Description], [Price], [Stock_level], [SupplierID]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Stock]" UpdateCommand="UPDATE [Stock] SET [Description] = ?, [Price] = ?, [Stock_level] = ?, [SupplierID] = ? WHERE [StockID] = ? ">
        <DeleteParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="String" />

        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="String" />
            <asp:Parameter Name="StockID" Type="String" />
        </UpdateParameters>
</asp:AccessDataSource>
    <br />
    <br />
</asp:Content>