<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MobileWelcome.aspx.vb" Inherits="Mobile_MobileWelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Mobile Welcome
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 <h1 style="text-align: center">Welcome Mobile User</h1>
    <div class="well">
    <p>Exciting news - our website is now compatible with all major mobile web browsers! You can search for materials, access our contact information, and even send us an email. Please simply click the link below to enjoy our mobile friendly site.</p>
        </div><div>
        <p style="text-align:center"> <a href="../Default.aspx">Home Page</a> | <a href="../Contact.aspx">Contact Us</a> | <a href="../Search.aspx">Search Materials</a></p>
        <p style="text-align:center"> 

        <a class="btn btn-success" href="tel:+17122998667" role="button">Call Us: 712-299-8667</a></p></div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>



</asp:Content>

