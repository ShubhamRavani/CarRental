Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class luxaudia3
    Inherits System.Web.UI.Page

    Protected Sub btnreserv_Click(sender As Object, e As EventArgs) Handles btnreserv.Click
        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        con.Open()
        Dim str As String
        str = "select * from carinform"
        Dim cmd As New SqlCommand(str, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)

        cmd.ExecuteNonQuery()

        If dt.Rows.Count > 0 Then
            Session("ucid") = dt.Rows(4)(0).ToString()
            Session("uctype") = dt.Rows(4)(2).ToString()
            Session("ucname") = dt.Rows(4)(3).ToString()
            Session("ucrate") = dt.Rows(4)(4).ToString()
            Response.Redirect("reserv.aspx")

        End If
        con.Close()
    End Sub
End Class
