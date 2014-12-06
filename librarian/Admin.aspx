<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>ADMIN PAGE!</h1>
<p>&nbsp;</p>
    <ul class="nav navbar-inner">
       
       
         <li><asp:HyperLink ID="Admin_Materials" runat="server" NavigateUrl="~/librarian/Admin_Materials.aspx">View Materials</asp:HyperLink></li>  
         <li><asp:HyperLink ID="Admin_New" runat="server" NavigateUrl="~/librarian/Admin_ViewPatrons.aspx">View Patrons</asp:HyperLink></li>  
         <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/librarian/SearchMaterials.aspx">Search Materials</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/librarian/SearchPatrons.aspx">Search Patrons</asp:HyperLink></li>
        
</ul>
    <hr />
    <ul class="nav navbar-inner">
          <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/librarian/siteManger/roles.aspx">Role Manager</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/librarian/siteManger/edit_user.aspx">View & Edit Users</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/librarian/siteManger/add_user.aspx">Add New User</asp:HyperLink></li>
	        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/librarian/siteManger/users_by_role.aspx">View Users By Role</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/librarian/AddNewPatron.aspx">Add New </asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/librarian/ViewAll.aspx">View All</asp:HyperLink></li>

        </ul>
    <hr />
    <ul class="nav navbar-inner">
            <li><asp:HyperLink ID="Project" runat="server" NavigateUrl="~/Librarian/Project.aspx">Project</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Book_Borrow.aspx">Borrow (Check-In/Check-Out)</asp:HyperLink></li>
        </ul>


</asp:Content>

