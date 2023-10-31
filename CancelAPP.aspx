<%@ Page Title="" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="CancelAPP.aspx.cs" Inherits="CancelAPP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    { font-size:25px;
      font-family:Times New Roman;
      color:Purple;
        }
        .style3
        {width:100px;
         height:25px;
         color:Purple;
         font-size:18px;
         font-family:Times New Roman;
        }
        .style4
        {margin-left:10px;
         float:inherit;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style4">
    <asp:Image ID="im1" runat="server" 
        ImageUrl="HOS/CAN.jpg" Height="47px" Width="360px"/></div>
        <table id="table1" style="margin-left:10px;float:left;margin-top:10px" width="600px" height="300px" cellpadding="2" cellspacing="1">
<tr class="style3"><td> Patient Name</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> E-Mail</td>
<td><asp:TextBox ID="Textbox2" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Reason</td>
<td><asp:TextBox ID="Textbox3" runat="server" Width="248px" TextMode="MultiLine" 
        Height="92px" ></asp:TextBox> </td></tr>
        <tr class="style3"><td> AllotedTime</td>
<td><asp:DropDownList ID="drop1" runat="server" Width="155px"><asp:ListItem>-Select Time Slot-</asp:ListItem>
<asp:ListItem>6.00pm-7.00pm</asp:ListItem><asp:ListItem>7.00pm-8.00pm></asp:ListItem><asp:ListItem>8.00pm-9.00pm</asp:ListItem></asp:DropDownList>
 </td></tr>
 <tr><td></td><td>
     <asp:ImageButton ID="imf" runat="server" ImageUrl="HOS/coss.jpg" 
         Height="51px" Width="159px" ImageAlign="Middle" OnClick="cancel_app" /></td></tr>
</table>
</asp:Content>

