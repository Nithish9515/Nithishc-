<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="HospitalNEW.aspx.cs" Inherits="code_new_HospitalNEWaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {color:Maroon;
     font-size:25px;
     font-family:Times New Roman;
     text-align:center;
        }
        .style3
        {color:Black;
         font-size:20PX;
         width:120px;
         height:10px;
            }
            .style4
            {width:60px;
             height:10px;
                }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style2">Hospital Registration</div>
<table style="margin-left:50px; float:left;background-color:Silver" width="500px" height="400px">
<tr><td class="style3">Hospital Name</td>
    <td class="style3"><asp:TextBox ID="Textbox1" runat="server" Height="27px" 
            Width="405px" ></asp:TextBox></td></tr>
<tr><td class="style3">ADDRESS</td>
    <td class="style3">
        <asp:TextBox  ID="Textbox2" runat="server" TextMode="MultiLine" Height="90px" 
            Width="309px"></asp:TextBox></td></tr>
<tr><td class="style3">ZIPCODE</td>
    <td class="style4"><asp:TextBox ID="Textbox3" runat="server" Width="182px"></asp:TextBox></td></tr>            
<tr><td class="style3">Telephone No</td>
    <td class="style4"><asp:TextBox ID="Textbox4" runat="server" Width="179px"></asp:TextBox></td> </tr>

<tr><td></td><td align="center">
    <asp:ImageButton ID="ADD" runat="server" 
        ImageUrl="HOS/add.png" Width="148px" onclick="ADD_Click" /></td></tr>
            </table>
</asp:Content>

