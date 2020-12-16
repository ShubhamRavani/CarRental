Imports System.Data
Imports System.Data.Sql
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class changepass
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then

            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "select * from regis where u_id=" & Session("u_id")

            Dim cmd As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then

                txtfirst.Text = dt.Rows(0)(1)
                txtlast.Text = dt.Rows(0)(2)
                txtaddress.Text = dt.Rows(0)(3)
                txtpostcode.Text = dt.Rows(0)(4)
                txtcontact.Text = dt.Rows(0)(5)
                txtpass.Text = dt.Rows(0)(8)
                txtemail.Text = dt.Rows(0)(7)



            End If
            con.Close()
        End If

    End Sub


    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        con.Open()

        Dim str As String
        str = "Update regis set firstname=@fn,lastname=@ln,address=@address,postcode=@postcode,contact=@contact,email=@mail,pass_word=@p where u_id=" & Session("u_id")


        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@fn", txtfirst.Text)
        cmd.Parameters.AddWithValue("@ln", txtlast.Text)
        cmd.Parameters.AddWithValue("@address", txtaddress.Text)
        cmd.Parameters.AddWithValue("@postcode", txtpostcode.Text)
        cmd.Parameters.AddWithValue("@contact", txtcontact.Text)
        cmd.Parameters.AddWithValue("@mail", txtemail.Text)
        cmd.Parameters.AddWithValue("@p", txtpass.Text)





        cmd.ExecuteNonQuery()

        con.Close()

        lblMessage.ForeColor = Color.Green
        lblMessage.Text = "Updated."
    End Sub
End Class
