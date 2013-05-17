<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" 
    CodeFile="CustomerSearch.aspx.vb" Inherits="CustomerSearch" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
  
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
  
        <br />
        <asp:TextBox ID="Txtsearch" runat="server" Width="210px"></asp:TextBox>
        
      <asp:AutoCompleteExtender ID="tbSearchCustomerRecords_AutoCompleteExtender" 
        runat="server" TargetControlID="Txtsearch" ServiceMethod="SearchCustomers" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" >
        </asp:AutoCompleteExtender>
        
        

        <asp:Button ID="Button1" runat="server" Text="Search" />
        &nbsp;
        <br />
        <asp:GridView ID="ajax" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ProjectDatabaseNew.mdb" SelectCommand="SELECT * FROM [Customers] WHERE ([Firstname] LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Txtsearch" Name="Firstname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />

</asp:Content>

