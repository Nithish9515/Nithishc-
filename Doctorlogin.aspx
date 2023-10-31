<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Doctorlogin.aspx.cs" Inherits="opendirve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




.reg{height:200px; width:320px; margin:0px auto; background:#ffffff;border-radius:5px;}
.title{color:#3134BB;border-bottom:1px solid #cccccc; height:40px; line-height:40px; font-size:20px; font-weight:bold; padding-left:10px;}
.left{float:left; width:90px; height:40px; line-height:40px; padding-left:10px;}
.right{float:left; width:220px; height:36px;padding-top:4px;}
    .err{height:40px; width:310px; margin:0px auto; padding-left:10px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><asp:Image ID="imw1" runat="server" ImageAlign="Left" 
        ImageUrl="HOS/dot.png" Height="252px" Width="260px" /></div>
    <div class="reg">
        <div class="title">
            Doctor Login</div>
        <div class="left">
            &nbsp;Login ID</div>
        <div class="right">
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="left">
            Password</div>
        <div class="right">
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" 
                Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="left">
        </div>
        <div class="right">
            <asp:Button ID="btnsubmit" runat="server" BorderStyle="None" CssClass="btn" 
                onclick="btnsubmit_Click" Text="Submit" ForeColor="Blue" />
        </div>
        <div class="err">
            <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>

</asp:Content>

