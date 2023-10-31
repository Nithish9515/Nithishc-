<%@ Page Title="" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="BOOK.aspx.cs" Inherits="BOOK" %>

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
            .style4
            { width:50px;
                }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style2">Book an Appointment Now</div>
<table id="table1" style="margin-left:10px;float:left;margin-top:10px" width="600px" height="400px" cellpadding="3" cellspacing="1">
<tr class="style3"><td>Name</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>Date Of Birth</td>
<td><asp:TextBox ID="Textbox2" runat="server" Width="187px"></asp:TextBox></td></tr>
<tr class="style3"><td>Gender</td><td>
    <asp:DropDownList ID ="drop2" runat="server" 
        Width="184px" Height="21px">
<asp:ListItem>--Select Gender--</asp:ListItem>
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem></asp:DropDownList></td> 
 </tr>
<tr class="style3"><td>Mobile</td>
<td><asp:TextBox ID="Textbox3" runat="server" Width="178px" ></asp:TextBox></td></tr>
<tr class="style3"><td>E-Mail</td>
<td><asp:TextBox id ="TextBOX4" runat="server" Width="174px"></asp:TextBox></td></tr>
<tr class="style3"><td>Appointment Date</td>
<td><asp:TextBox ID="Textbox5" runat="server" Width="175px"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
<tr class="style3"><td>Time</td>
<td><asp:DropDownList ID="drop1" runat="server" Width="182px"><asp:ListItem>-Select Time-</asp:ListItem>
<asp:ListItem>6.00pm-7.00pm></asp:ListItem><asp:ListItem>7.00pm-8.00pm</asp:ListItem><asp:ListItem>8.00pm-9.00pm</asp:ListItem></asp:DropDownList>
 </td></tr>
 <tr class="style3"><td>Disease Description</td><td>
     <asp:TextBox ID="Textbox6" 
         runat="server" TextMode="MultiLine" Height="112px" Width="295px"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> </td></tr>
<tr><td></td><td align="center"><asp:ImageButton ID="IMG1" runat="server" 
        ImageUrl="~/HOS/bok.jpg" Width="264px"  OnClick="book_now"/></td></tr>
</table>
</asp:Content>

