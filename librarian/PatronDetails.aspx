<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PatronDetails.aspx.vb" Inherits="admin_PatronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Patrons] WHERE ([PID] = @PID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="PID" QueryStringField="PID" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>

     <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/librarian/Admin.aspx">Back to librarian page</asp:HyperLink></li>    
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="181px" AutoGenerateRows="False" DataKeyNames="PID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Street Address" HeaderText="Street Address" SortExpression="Street Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip Code" HeaderText="Zip Code" SortExpression="Zip Code" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Materials" HeaderText="Materials" SortExpression="Materials" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

