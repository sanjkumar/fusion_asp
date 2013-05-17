Imports System.Data.OleDb
Imports System.Data

Partial Class NewOrder
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click


        Dim objConnection As OleDbConnection
        Dim objCmd As OleDbCommand
        Dim strConnection As String
        Dim strSQL As String

        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;" & _
                        "Data Source=|DataDirectory|ProjectDatabaseNew.mdb;"

        ' Create and open the connection object
        objConnection = New OleDbConnection(strConnection)
        objConnection.Open()

        ' set the SQL string
        strSQL = "INSERT INTO Orders(OrderID,CustomerID,Item,Cost,StockID)" & _
                          " VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')"

        ' Create the Command and set its properties
        objCmd = New OleDbCommand(strSQL, objConnection)

        ' execute the command
        objCmd.ExecuteNonQuery()

        MsgBox("New Order added")

    End Sub
End Class
