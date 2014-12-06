Imports System.Data.SqlClient
Partial Class librarian_Borrow
    Inherits System.Web.UI.Page


    Protected Sub btn_Borrow_Click(sender As Object, e As EventArgs) Handles btn_Borrow.Click

        Dim strToolId As String = tb_MaterialID.Text
        Dim strUserName As String = tb_UserName.Text
        Dim RentDate As DateTime = DateTime.Now
        Dim DateDueBack As DateTime = DateAdd("d", 30, Today)

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("SouthLiberty").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "sp_TR_RentTool2"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure


        sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
        sqlCmd.Parameters.Add(New SqlParameter("@MID", strToolId))
        sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
        sqlCmd.Parameters.Add(New SqlParameter("@DateDueBack", DateDueBack))
        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("ViewAllBorrows.aspx")

    End Sub
End Class
