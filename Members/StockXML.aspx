﻿<%@ Page Title="Stcokxml" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="true" 
    CodeFile="stockxml.aspx.vb" Inherits="stockxml" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

  Sub Page_Load(Sender As Object, E As EventArgs)

    Dim strConnection As String
    Dim strSQL        As String
    Dim objDataSet    As New DataSet()
    Dim objConnection As OleDbConnection
    Dim objAdapter    As OleDbDataAdapter

    ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|ProjectDatabaseNew.mdb;"
        strSQL = "SELECT StockId, Description, Stock_level, Price FROM Stock;"

    ' open the connection and set the command
    objConnection = New OledbConnection(strConnection)
    objAdapter = New OledbDataAdapter(strSQL, objConnection)

    ' fill the dataset with the data
        objAdapter.Fill(objDataSet, "Stock")
    ' create an XML file called Employees and fill this with our data
        objDataSet.WriteXml(Server.MapPath("Stock.xml"))
    ' add a link to our web page to the XML file created
   

  End Sub

</script>

    <a href="Stock.xml">View XML file</a> 

</asp:Content>
