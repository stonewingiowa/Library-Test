<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchMaterials.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2]">
    </asp:SqlDataSource>
    <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <% If Not IsPostBack Then%>

        Search for a book by author, title, ISBN, MID or description:
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true" Width="128px"></asp:TextBox>
    <%Else%>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/search.aspx">Go back to search page</asp:HyperLink>
    <br />    
    <br />
    <br />
     

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="862px" AutoGenerateColumns="False" DataKeyNames="MID">
        <Columns>
            <asp:BoundField DataField="MID" HeaderText="MID" SortExpression="MID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:BoundField DataField="Patron" HeaderText="Patron" SortExpression="Patron" />
        </Columns>
    </asp:GridView>

    <%End If%>
    <br />
</asp:Content>

