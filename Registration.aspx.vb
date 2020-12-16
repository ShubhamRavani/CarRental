Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration


Partial Class _Default

    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click
        Dim a As String
        Dim data As Boolean

        data = True


        If RadioButtonList1.Items(0).Selected = True Then

            a = "male"
        Else
            a = "female"

        End If
        Dim str As String
        str = "Insert into regis values(@fn,@ln,@address,@postcode,@contact,@gender,@email,@pass_word,@status)"
        Dim cmd As New SqlCommand(str, con)
      

        cmd.Parameters.AddWithValue("@fn", txtfirst.Text)
        cmd.Parameters.AddWithValue("@ln", txtlast.Text)
        cmd.Parameters.AddWithValue("@address", txtaddress.Text)
        cmd.Parameters.AddWithValue("@postcode", txtpostcode.Text)

        cmd.Parameters.AddWithValue("@contact", txtcontact.Text)
        cmd.Parameters.AddWithValue("@gender", a)
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        cmd.Parameters.AddWithValue("@pass_word", txtpass.Text)
        cmd.Parameters.AddWithValue("@status", data)



        con.Open()

        cmd.ExecuteNonQuery()

        con.Close()

        Response.Redirect("login.aspx")



    End Sub
End Class