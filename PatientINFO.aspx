<%@ Page Title="" Language="C#" MasterPageFile="DoctorHome.master" AutoEventWireup="true" CodeFile="PatientINFO.aspx.cs" Inherits="code_new_PatientINFO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {color:Maroon;
     font-size:20px;
     font-family:Times New Roman;
     }
     .style3
        {width:100px;
         height:25px;
         color:Blue;
         font-size:18px;
         font-family:Times New Roman;
         font-style:oblique;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style2">FILL THE PATIENT DETAILS</div>
<table id="table1" style="margin-left:10px;float:left" width="400px" height="500px" cellpadding="5" cellspacing="5">
<tr class="style3"><td>NAME</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>EMAIL</td>
<td><asp:TextBox ID="Textbox2" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>AGE</td>
<td><asp:TextBox ID="Textbox3" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>GENDER</td>
<td><asp:DropDownList ID="drop1" runat="server" Height="18px" Width="181px">
                         <asp:listitem>Select</asp:listitem>
                         <asp:listitem>Male</asp:listitem>
                         <asp:listitem>FEMALE</asp:listitem>
</asp:DropDownList> </td></tr>
<tr class="style3"><td>REASON</td>
<td><asp:TextBox ID="Textbox4" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td>DISCRIPTION</td>
<td><asp:TextBox ID="Textbox5" runat="server" Width="220px" TextMode="MultiLine" 
        Height="67px"></asp:TextBox> </td></tr>
<tr class="style3"><td>DOCUMENTS</td>

<td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
<<tr class="style3"><td>DATE</td>
<td><asp:TextBox ID="Textbox6" runat="server" Width="183px" ></asp:TextBox> </td></tr>


<tr><td></td><td><asp:ImageButton ID="img" runat="server" ImageUrl="HOS/add.png" OnClick="add" 
        Width="128px" /></td></tr>




</table>
</asp:Content>

