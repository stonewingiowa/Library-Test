<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Book_Borrow.aspx.vb" Inherits="librarian_Borrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Check Out a Book
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    Username: <asp:textbox ID="tb_UserName" runat="server"></asp:textbox>

    <br />
    <br />

    Material ID: <asp:textbox ID="tb_MaterialID" runat="server"></asp:textbox>
    
    <br />
    <br />

    <asp:Button ID="btn_Borrow" runat="server" Text="Check Out"></asp:Button>


    <br />
    <br />
    Look up users:&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" Height="16px" Width="163px">
    </asp:DropDownList>
    <br />
    <br />
    Look up Material ID:&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="MID" DataValueField="MID" Height="16px" Width="163px">
    </asp:DropDownList>
    <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [vw_aspnet_Users]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SouthLiberty %>" SelectCommand="SELECT * FROM [project_Materials2]"></asp:SqlDataSource>
    <br />


</asp:Content>

