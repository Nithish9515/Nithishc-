<%@ Page Title="" Language="C#" MasterPageFile="DoctorHome.master" AutoEventWireup="true" CodeFile="ConductAD.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .style2
    { font-size:25px;
      font-family:Times New Roman;
      color:Red;
        }
        .style3
        {width:100px;
         height:25px;
         color:Blue;
         font-size:18px;
         font-family:Times New Roman;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="style2">Report to Admin</div>
<table id="table1" style="margin-left:100px;float:left;margin-top:10px" width="600px" height="400px" cellpadding="3" cellspacing="1">
<tr class="style3"><td>Name</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
 </tr>
<tr class="style3"><td>E-Mail</td>
<td><asp:TextBox id ="TextBOX4" runat="server" Width="174px"></asp:TextBox></td></tr>
<tr class="style3"><td> Date</td>
<td><asp:TextBox ID="Textbox5" runat="server" Width="167px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
 <tr class="style3"><td> Permission Reason</td><td>
     <asp:TextBox ID="Textbox6" 
         runat="server" TextMode="MultiLine" Height="112px" Width="295px"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> </td></tr>
<tr><td></td><td align="center">
    <asp:ImageButton ID="IMG1" runat="server" 
        ImageUrl="~/HOS/req.gif" Width="241px"  OnClick="book_now" Height="51px"/></td></tr>
</table>
</asp:Content>

