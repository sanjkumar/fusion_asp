<%@ Page Title="Newcustomer" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Newcustomer.aspx.vb" Inherits="Newcustomer" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">




    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ProjectDatabaseNew.mdb" DeleteCommand="DELETE FROM [Customers] WHERE ([CustomerID] = ? )" InsertCommand="INSERT INTO [Customers] ([CustomerID], [Firstname], [Surname], [City], [Email], [Telephone]) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [Firstname] = ?, [Surname] = ?, [City] = ?, [Email] = ?, [Telephone] = ? WHERE [CustomerID] = ? ">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Telephone" Type="String" />
            <asp:Parameter Name="CustomerID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerID" DataSourceID="AccessDataSource1" AllowPaging="True">
        <EditItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
            <br />
            Firstname:
            <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Telephone:
            <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerID:
            <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
            <br />
            <br />
            First name:&nbsp;&nbsp;
            <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FirstnameTextBox" ErrorMessage="Please enter first name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            Sur name:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="SurnameTextBox" ErrorMessage="Please enter sur name" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CityTextBox" ErrorMessage="Please enter city" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter valid email address" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Telephone:&nbsp;
            <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TelephoneTextBox" ErrorMessage="Please enter valid telephone number" ForeColor="#FF5050" MaximumValue="9" MinimumValue="0" ViewStateMode="Enabled"></asp:RangeValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TelephoneTextBox" ErrorMessage="Please enter telephone number" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
            <br />
            Firstname:
            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Telephone:
            <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' />
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