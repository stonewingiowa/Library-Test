<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Book_Return.aspx.vb" Inherits="librarian_Book_Return" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Return a Book
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Material ID to be returned: <asp:TextBox ID="tb_ToolID" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="btn_Return" runat="server" Text="Return Book"></asp:Button>

</asp:Content>
