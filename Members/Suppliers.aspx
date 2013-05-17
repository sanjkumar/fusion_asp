<%@ Page Title="Suppliers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Suppliers.aspx.vb" Inherits="Suppliers" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


  
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ProjectDatabaseNew.mdb" SelectCommand="SELECT * FROM [Suppliers]"></asp:AccessDataSource>


  

      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
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

  
        <div id="image">
    <img src="Images/appleMacbook.jpg" />
</div>
</asp:Content>
