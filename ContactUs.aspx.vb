Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class ContactUs
    Inherits System.Web.UI.Page

   
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")

        Dim str As String
        str = "Insert into con values(@n,@m,@mobi,@mg)"
        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@n", txtname.Text)
        cmd.Parameters.AddWithValue("@m", txtmail.Text)
        cmd.Parameters.AddWithValue("@mobi", txtmobino.Text)
        cmd.Parameters.AddWithValue("@mg", txtmsg.Text)



        con.Open()

        cmd.ExecuteNonQuery()

        con.Close()
        txtname.Text = ""
        txtmail.Text = ""
        txtmobino.Text = ""
        txtmsg.Text = ""

    End Sub
End Class
