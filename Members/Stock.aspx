<%@ Page Title="Stoct" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Stock.aspx.vb" Inherits="Stock" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 268px;
            height: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="searchbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsearch" runat="server" Text="Search" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
        <div id="image">
            <img alt="sonytv" class="auto-style1" src="images/sonytv.jpg" />
        </div>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
        SelectCommand="SELECT * FROM [Stock] WHERE ([Description] LIKE '%' + ? + '%')" 
        DeleteCommand="DELETE FROM [Stock] WHERE [StockID] = ?"
         InsertCommand="INSERT INTO [Stock] ([StockID], [Description], [Price], [Stock_level]) VALUES (?, ?, ?, ?)"
         UpdateCommand="UPDATE [Stock] SET [Description] = ?, [Price] = ?, [Stock_level] = ? WHERE [StockID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="StockID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="searchbox" Name="Description" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="StockID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>

  
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StockID" 
          DataSourceID="AccessDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="StockID" HeaderText="StockID" ReadOnly="True" 
                  SortExpression="StockID" />
              <asp:BoundField DataField="Description" HeaderText="Description" 
                  SortExpression="Description" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
              <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                  SortExpression="Stock_level" />
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
  
        <br />

  
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/editstock.aspx">Add new Stock line</asp:HyperLink>
        <br />
   
  
  </div>



</asp:Content>