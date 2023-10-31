<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="ADCANCEL1.aspx.cs" Inherits="ADCANCEL1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{font-family:Times New Roman;
 font-size:18px;
 color:Blue;
 
    }
    .style3
    {color: Red;
     font-size:20px;
     font-family:Times New Roman; }
     .style4
     {
        width:500px;
        height:500px;
        margin-left:50px;
        float:left;
                }
         .style5
         {font-family:Times New Roman;
          font-size:18px;
          color:Blue;
          width:50px;
          height:50px;
             }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style3">Cancel AppointMent  For Patient</div>
<table class="style4">
<tr class="style5"><td>PatientName</td><td><asp:Label ID="label1" runat="server" Text="lblname"></asp:Label></td></tr>
<tr class="style5"><td>E-mail</td><td><asp:Label ID="label2" runat="server" Text="lblemal"></asp:Label></td></tr>
<tr class="style5"><td>Message</td><td><asp:TextBox ID="box1" runat="server" TextMode="MultiLine" Width="500px" Height="120px"></asp:TextBox></td></tr>
<tr class="style5"><td></td><td><asp:ImageButton ID="imag1" runat="server" 
        ImageUrl="~/HOS/can.gif" Width="200px"  OnClick="Sendmail_Cancel"/></td></tr></table>
</asp:Content>

