<%@ Page Title="" Language="C#" MasterPageFile="General.master" AutoEventWireup="true" CodeFile="LOGINOH.aspx.cs" Inherits="code_new_LOGINOH" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




.reg{height:200px; width:320px; margin:0px auto; background:#ffffff;border-radius:5px;}
.title{color:#3134BB;border-bottom:1px solid #cccccc; height:40px; line-height:40px; font-size:20px; font-weight:bold; padding-left:10px;}
.left{float:left; width:90px; height:40px; line-height:40px; padding-left:10px;font-size:18px}
.right{float:left; width:220px; height:36px;padding-top:4px;}
    .err{height:40px; width:310px; margin:0px auto; padding-left:10px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Image ID="imw1" runat="server" ImageAlign="Left" 
        ImageUrl="HOS/hosn.jpg" Height="252px" Width="278px" /></div>
    <div class="reg">
        <div class="title">
            Hospital Server</div>
<div class="left"> &nbsp; Hospital</div>
<div class="right">
    <asp:DropDownList ID="drop1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="HospitalName" 
        DataValueField="HospitalName" style="margin-left:0px" Width="208px" ></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [HospitalName] FROM [Hospital]"></asp:SqlDataSource>
        </div>

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
        <asp:ImageButton ID="Image" runat="server" ImageUrl="HOS/Now.jpg"  Width="120px" onclick="btnsubmit_Click1"/>
            
            <%--<asp:Button ID="btnsubmit" runat="server" BorderStyle="None" CssClass="btn" 
                Text="Submit" onclick="btnsubmit_Click1" />--%>
        </div>
        <div class="err">
            <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>

</asp:Content>

