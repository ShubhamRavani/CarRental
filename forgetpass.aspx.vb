Imports System.Net
Imports System.Net.Mail
Imports System.Drawing
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class forgetpass
    Inherits System.Web.UI.Page

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click
        Dim username As String = String.Empty
        Dim password As String = String.Empty
        Dim constr As String = ConfigurationManager.ConnectionStrings("carrentalsConnection1").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT firstname,pass_word FROM regis WHERE email = @Email")
                cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim())
                cmd.Connection = con
                con.Open()
                Using sdr As SqlDataReader = cmd.ExecuteReader()
                    If sdr.Read() Then
                        username = sdr("firstname").ToString()
                        password = sdr("pass_word").ToString()
                    End If
                End Using
                con.Close()
            End Using
        End Using
        If Not String.IsNullOrEmpty(password) Then
            Dim mm As New MailMessage("shubhamravani@gmail.com", txtemail.Text.Trim)
            mm.Subject = "Password Recovery"
            mm.Body = String.Format("Dear {0},<br /><br />This message was generated to recover your Car Rentals Password.<br />The password is {1}.<br /><br />Thank You.", username, password)
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New NetworkCredential()
            NetworkCred.UserName = "shubhamravani@gmail.com"
            NetworkCred.Password = "@king#555#khan@"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
            lblMessage.ForeColor = Color.Green
            lblMessage.Text = "Password has been sent to your email address."
        Else
            lblMessage.ForeColor = Color.Red
            lblMessage.Text = "This email address does not match our records."
        End If
    End Sub
End Class
