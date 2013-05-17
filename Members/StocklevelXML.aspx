<%@ Page Title="Stock level XMl" Language="VB" MasterPageFile="~/Site.master" 
    AutoEventWireup="true" CodeFile="Stocklevelxml.aspx.vb" Inherits="Stocklevelxml" %> 

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server"> 

<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim dbconn, sql, dbcomm, dbread
        dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;" & _
                                     "Data Source=|DataDirectory|ProjectDatabaseNew.mdb;")
        dbconn.Open()
        sql = "SELECT * FROM Stock"
        dbcomm = New OleDbCommand(sql, dbconn)
        dbread = dbcomm.ExecuteReader()
        stock.DataSource = dbread
        stock.DataBind()
        dbread.Close()
        dbconn.Close()
    End Sub
</script>

<asp:Repeater id="stock" runat="server">

<HeaderTemplate>
<table border="1" width="50%">
<tr>
 <th>StockID</th>
<th>Description</th>
<th>Price</th>
<th>Stock_level</th>
</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>
<td><%#Container.DataItem("StockID")%></td>
<td><%#Container.DataItem("Description")%></td>
<td><%#Container.DataItem("Price")%></td>
<td><%#Container.DataItem("Stock_level")%></td>
</tr>
</ItemTemplate>

<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>


</asp:Content> 

