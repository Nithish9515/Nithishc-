<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Abstract.aspx.cs" Inherits="Abstract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-size:20px;font-family:Times New Roman;text-transform:capitalize;color:Teal" ></div><br>
   <div style="width:100px; background-color:Maroon"></div>
    <marquee direction="left"></marquee>
        <%--<table style=" margin-left:0px; float:left;" height: 128px;" cellspacing="10" >--%>
        <div style="font-size:15px;margin-left:0px;margin-right:50px;text-align:justify">
           <asp:Image ID="imw" runat="server" ImageAlign="Middle" 
                ImageUrl="HOS/management.jpg" Height="510px" Width="897px" />   
        </div>
</asp:Content>

