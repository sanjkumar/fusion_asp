<%@ Page Title="Edit Stcok Xml" Language="VB" MasterPageFile="~/Site.master" 
    AutoEventWireup="true" CodeFile="EditStockxml.aspx.vb" Inherits="EditStockxml" %> 

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server"> 

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat=server>
   private i, j as integer
   private strOutput as string = ""
   public xmldoc as new XMLDataDocument()
   
   sub Page_Load(Sender as Object, e as EventArgs)
      if not Page.IsPostBack then
         GetData()
         BindControl()
      end if
   end sub
   
   sub UpdateBtn_Click(Sender as Object, e as EventArgs)
        Dim StockID As TextBox
        Dim Description As TextBox
        Dim Price As TextBox
        Dim Stock_level As TextBox
      
      GetData()
      'update data
      For i = 0 To DataGrid1.Items.Count-1
            StockID = DataGrid1.Items(i).FindControl("StockID")
            Description = DataGrid1.Items(i).FindControl("Description")
            Price = DataGrid1.Items(i).FindControl("Price")
            Stock_level = DataGrid1.Items(i).FindControl("Stock_level")
      
            xmldoc.DataSet.Tables(0).Rows(i)("StockID") = StockID.Text()
            xmldoc.DataSet.Tables(0).Rows(i)("Description") = Description.Text()
            xmldoc.DataSet.Tables(0).Rows(i)("Price") = Price.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Stock_level") = Stock_level.Text()
      Next
      
      try
            xmldoc.Save(Server.MapPath("stock.xml"))
      catch
         output.Text = "Error updating data"
      end try
      
      BindControl()
   end sub
   
   sub GetData()
      try
            xmldoc.DataSet.ReadXml(Server.MapPath("stock.xml"))
      catch ex as Exception
         output.Text = "Error accessing XML file"
      end try
   end sub
   
   sub BindControl()
      DataGrid1.DataSource = xmldoc.DataSet
      DataGrid1.DataMember = xmldoc.DataSet.Tables(0).TableName
      DataGrid1.DataBind()
   end sub
</script>


   <asp:Label id="output" runat="server" />
  
   <asp:DataGrid id="DataGrid1" runat="server" 
      BorderColor="#6600FF" 
      GridLines="None" 
      HeaderStyle-BackColor="#cccc99"
      ItemStyle-BackColor="#ffffff"
      AlternatingItemStyle-Backcolor="#cccccc" 
      AutogenerateColumns="False" BackColor="#6666FF" CellPadding="4" ForeColor="#333333" >
<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
      <Columns>
         <asp:TemplateColumn HeaderText="StockID">
            <ItemTemplate>
               <asp:TextBox id="StockID" runat="server" 
                  Text='<%# Container.DataItem("StockID")%>' 
                   width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Description">
            <ItemTemplate>
               <asp:TextBox id="Description" runat="server" 
                  Text='<%# Container.DataItem("Description")%>' 
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Price">
            <ItemTemplate>
               <asp:TextBox id="Price" runat="server" 
                  Text='<%# Container.DataItem("Price")%>'
                  width="50px" />
            </ItemTemplate>
         </asp:TemplateColumn>

          <asp:TemplateColumn HeaderText="Stock_level">
            <ItemTemplate>
               <asp:TextBox id="Stock_level" runat="server" 
                  Text='<%# Container.DataItem("Stock_level")%>'
                  width="50px" />
            </ItemTemplate>
         </asp:TemplateColumn>
      </Columns>     
       <EditItemStyle BackColor="#2461BF" />
       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

<ItemStyle BackColor="#EFF3FB"></ItemStyle>
       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
   </asp:DataGrid>
   
   <left>
   <asp:Button id="update" runat="server"
      OnClick="UpdateBtn_Click"
      text="Update!" />
   </left>


</asp:Content> 

