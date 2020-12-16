Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration


Partial Class Login
    Inherits System.Web.UI.Page
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click

        Dim str As String
        str = "select * from regis where email=@mail and pass_word=@password "

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@mail", txtmail.Text)
        cmd.Parameters.AddWithValue("@password", txtpass.Text)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)



        If dt.Rows.Count > 0 Then

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            MsgBox("Login Succeed")
            Session("email") = dt.Rows(0)(7).ToString()
            Session("u_id") = dt.Rows(0)(0).ToString()
            Response.Redirect("aboutus.aspx")

        Else

            MsgBox("Access Denied..")

            con.Close()
            Response.Redirect("Login.aspx")
        End If

    End Sub

End Class
