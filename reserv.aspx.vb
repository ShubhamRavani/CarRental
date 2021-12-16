Imports System.Net
Imports System.Net.Mail
Imports System.Drawing
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data
Imports System.Data.Sql
Partial Class Reservation_reserv
    Inherits System.Web.UI.Page

    'Protected Sub cdedate_SelectionChanged(sender As Object, e As EventArgs) Handles cdedate.SelectionChanged
    '    txtdedate.Text = ""
    '    For i As Integer = 0 To (cdedate.SelectedDates.Count - 1)
    '        txtdedate.Text += cdedate.SelectedDates.Item(i).ToShortDateString()


    '    Next
    'End Sub

    'Protected Sub credate_SelectionChanged(sender As Object, e As EventArgs) Handles credate.SelectionChanged

    '    txtredate.Text = ""
    '    For j As Integer = 0 To (credate.SelectedDates.Count - 1)
    '        txtredate.Text += credate.SelectedDates.Item(j).ToShortDateString()


    '    Next
    'End Sub

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

                txtname.Text = dt.Rows(0)(1)
                txtmail.Text = dt.Rows(0)(7)
                txtcontact.Text = dt.Rows(0)(5)

            End If

            Dim str As String

            str = "select * from carinform where i_id=" & Session("ucid")

            Dim cmd1 As New SqlCommand(str, con)
            Dim da1 As SqlDataAdapter
            da1 = New SqlDataAdapter(cmd1)
            Dim dt1 As New DataTable
            da1.Fill(dt1)

            If dt1.Rows.Count > 0 Then

                txtctype.Text = Session("uctype")
                txtcname.Text = Session("ucname")
                txtcrate.Text = Session("ucrate")

            End If

            con.Close()
        End If

    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        con.Open()

        Dim str As String
        str = "Insert into reservation values(@fn,@mail,@contact,@ddate,@rdate,@ctype,@cname,@crate)"


        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@fn", txtname.Text)
        cmd.Parameters.AddWithValue("@mail", txtmail.Text)
        cmd.Parameters.AddWithValue("@contact", txtcontact.Text)
        cmd.Parameters.AddWithValue("@ddate", txtdedate.Text)
        cmd.Parameters.AddWithValue("@rdate", txtredate.Text)
        cmd.Parameters.AddWithValue("@ctype", txtctype.Text)
        cmd.Parameters.AddWithValue("@cname", txtcname.Text)
        cmd.Parameters.AddWithValue("@crate", txtcrate.Text)

        cmd.ExecuteNonQuery()



        Dim username As String = String.Empty
        Dim mail As String = String.Empty
        'Dim constr As String = ConfigurationManager.ConnectionStrings("carrentalsConnection1").ConnectionString
        'Using conn As New SqlConnection(constr)
        Using cmdd As New SqlCommand("SELECT firstname,email FROM regis WHERE email = @email")
            cmdd.Parameters.AddWithValue("@email", txtmail.Text.Trim())
            cmdd.Connection = con

            Using sdr As SqlDataReader = cmdd.ExecuteReader()
                If sdr.Read() Then
                    username = sdr("firstname").ToString()
                    mail = sdr("email").ToString()
                End If
            End Using
            con.Close()
        End Using
        'End Using
        If Not String.IsNullOrEmpty(mail) Then
            Dim mm As New MailMessage("email id", txtmail.Text.Trim)
            mm.Subject = "Car Reservation"
            mm.Body = String.Format("Hi {0},<br /><br />Your Car is Reserved.<br /> <br />Thank You.", username)
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential()
            NetworkCred.UserName = "email id"
            NetworkCred.Password = "password"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)

            lblMessage.ForeColor = Color.Green
            lblMessage.Text = "Thanks for renting car from our site. Have peacefull Jorney.!!"
        Else
            lblMessage.ForeColor = Color.Red
            lblMessage.Text = "Sorry Email Cannot Sent. Please Try Again.."
        End If
    End Sub
End Class
