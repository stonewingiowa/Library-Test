﻿
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_librarian") = True Then
            Response.Redirect("~/librarian/Admin.aspx")
        ElseIf Roles.IsUserInRole(Login1.UserName, "r_patron") = True Then
            Response.Redirect("~/Patron/Default.aspx")
        ElseIf Roles.IsUserInRole(Login1.UserName, "r_superLibrarian") Then
            Response.Redirect("~/superLibrarian/Default.aspx")
        Else : Response.Redirect("~/materials.aspx")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class
