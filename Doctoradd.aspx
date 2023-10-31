<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Doctoradd.aspx.cs" Inherits="Doctoradd" %>

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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style2">Fill the Doctor Details</div>
<table id="table1" style="margin-left:10px;float:left;margin-top:15px" width="600px" height="400px" cellpadding="2" cellspacing="1">
<tr class="style3"><td> Doctor Name</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
 <tr class="style3"><td>Gender</td><td>
     <asp:DropDownList ID ="drop2" runat="server" 
            Width="180px">
<asp:ListItem Text="--Select---"></asp:ListItem>
<asp:ListItem Text="Male"></asp:ListItem>
<asp:ListItem Text="Female"></asp:ListItem></asp:DropDownList></td> 
<tr class="style3"><td>Qualification</td>
<td><asp:TextBox ID="Textbox2" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>Specialist</td>
<td><asp:TextBox ID="Textbox3" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>Experience</td>
<td><asp:TextBox ID="Textbox4" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> E-Mail</td>
<td><asp:TextBox ID="Textbox5" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Date of Birth</td>
<td><asp:TextBox ID="Textbox6" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Mobile</td>
<td><asp:TextBox ID="Textbox7" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Address</td>
<td><asp:TextBox ID="Textbox8" runat="server" Width="183px"  TextMode="MultiLine"></asp:TextBox> </td></tr>
<tr class="style3"><td> Doctor Username</td>
<td><asp:TextBox ID="Textbox9" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Password</td>
<td><asp:TextBox ID="Textbox10" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr><td align="center"><asp:ImageButton ID="im1" runat="server" 
        ImageUrl="HOS/regg.png"  ImageAlign="Middle" onclick="im1_Click"/></td>
<td><asp:ImageButton ID="im2" runat="server" ImageUrl="HOS/em3.jpg" Width="193px" 
        Height="53px" onclick="im2_Click" /></td></tr>
</table>
</asp:Content>

