<%@ Page Title="Supplier ADO" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeFile="SupplierADO.aspx.vb" Inherits="SupplierADO" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">

  sub Page_Load(sender as Object, e as EventArgs)
    'Create a connection string
    Dim connString as String
        connString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=|DataDirectory|ProjectDatabaseNew.mdb;"
    
    'Open a connection
    Dim objConnection as OleDbConnection
    objConnection = New OleDbConnection(connString)
    objConnection.Open()
    
    'Specify the SQL string
        Dim strSQL As String = "SELECT * FROM Suppliers"
    
    'Create a command object
    Dim objCommand as OleDbCommand
    objCommand = New OleDbCommand(strSQL, objConnection)

    'Get a datareader
    Dim objDataReader as OleDbDataReader
    objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection)

    'Do the DataBinding
    dgResults.DataSource = objDataReader
    dgResults.DataBind()    
    
    'Close the datareader/db connection
    objDataReader.Close()
    End Sub
    
   
  </script> 

  <asp:DataGrid id="dgResults" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
      <AlternatingItemStyle BackColor="White" />
      <EditItemStyle BackColor="#2461BF" />
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <ItemStyle BackColor="#EFF3FB" />
      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
      <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataGrid>


</asp:Content>

