<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="PatientAllot .aspx.cs" Inherits="PatientAllot_" %>

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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:Image ID="im1" runat="server" ImageAlign="Middle" 
        ImageUrl="~/HOS/schh.jpg" Height="47px" Width="199px" /></div>
        <table id="table1" style="margin-left:10px;float:left;margin-top:10px" width="600px" height="300px" cellpadding="2" cellspacing="1">
<tr class="style3"><td> Patient Name</td>
<td><asp:TextBox ID="Textbox1" runat="server" Width="183px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> E-Mail</td>
<td><asp:TextBox ID="Textbox2" runat="server" Width="183px" Height="22px" ></asp:TextBox> </td></tr>
<tr class="style3"><td> Discription</td>
<td><asp:TextBox ID="Textbox3" runat="server" Width="248px" TextMode="MultiLine" 
        Height="92px" ></asp:TextBox> </td></tr>
      
 <tr><td></td><td>
     <asp:ImageButton ID="imf" runat="server" ImageUrl="~/HOS/send.gif" 
         Height="51px" Width="159px" ImageAlign="Middle" OnClick="request_app" /></td></tr>
        
    
    <asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 
               AutoGenerateColumns="False"  DataSourceID="SqlDataSource1"  
        AllowSorting="True">
         <Columns>
         <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
            SortExpression="EMailID"/>
                <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID"/>
         <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
                 </Columns>
       </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [PatientName], [EMailID], [Status] FROM [Alloted]"></asp:SqlDataSource>
        </table>
</asp:Content>

