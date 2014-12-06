
Partial Class details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Response.AddHeader("REFRESH", "2;URL=~/admin/Admin_Materials.aspx")
    End Sub

   
End Class
