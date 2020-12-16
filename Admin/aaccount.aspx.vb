Imports System.Data
Imports System.Data.Sql
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then

            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentalsadmin;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "select * from regi where a_id=" & Session("a_id")

            Dim cmd As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then

                txtfirst.Text = dt.Rows(0)(1)
                txtlast.Text = dt.Rows(0)(2)
                txtcontact.Text = dt.Rows(0)(3)
                txtpass.Text = dt.Rows(0)(5)
                txtemail.Text = dt.Rows(0)(4)



            End If
            con.Close()
        End If



    End Sub

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentalsadmin;Integrated Security=True")
        con.Open()

        Dim str As String
        str = "Update regi set firstname=@fn,lastname=@ln,contact=@contact,email=@mail,pass_word=@p where a_id=" & Session("a_id")


        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@fn", txtfirst.Text)
        cmd.Parameters.AddWithValue("@ln", txtlast.Text)
        cmd.Parameters.AddWithValue("@contact", txtcontact.Text)
        cmd.Parameters.AddWithValue("@mail", txtemail.Text)
        cmd.Parameters.AddWithValue("@p", txtpass.Text)


        cmd.ExecuteNonQuery()

        con.Close()

        lblMessage.ForeColor = Color.Green
        lblMessage.Text = "Updated."


    End Sub
End Class
