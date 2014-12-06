<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Admin_ViewPatrons.aspx.vb" Inherits="admin_admin_patrons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Patrons]">
    </asp:SqlDataSource>
     <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" Width="758px" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:HyperLinkField DataNavigateUrlFields="PID" DataNavigateUrlFormatString="PatronDetails.aspx?PID={0}" HeaderText="Details" Text="Select" />
        </Columns>
    </asp:gridview>
</asp:Content>

