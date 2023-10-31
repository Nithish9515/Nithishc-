<%@ Page Title="" Language="C#" MasterPageFile="DoctorHome.master" AutoEventWireup="true" CodeFile="Patient_SAT.aspx.cs" Inherits="code_new_Patient_SAT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:25px;
  color:Orange;
  font-family:Times New Roman;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:10px;float:left; height:128px; margin-right:50px;margin-top:10px">
<tr><td class="style2">Patient Details <strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="DarkCyan" 
        BackColor="White" RowStyle-Font-Size="Medium" CellSpacing ="1"  
        HeaderStyle-Font-Size="Medium"  HeaderStyle-Font-Bold="true" 
        DataSourceID="SqlDataSource3" 
         AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                SortExpression="GENDER" />
            <asp:BoundField DataField="REASON" HeaderText="REASON" 
                SortExpression="REASON" />
            <asp:BoundField DataField="Discription" HeaderText="Discription" 
                SortExpression="Discription" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="SpecialistName" HeaderText="SpecialistName" 
                SortExpression="SpecialistName" />
        </Columns>
        <HeaderStyle Font-Bold="True" Font-Size="Small"></HeaderStyle>

<RowStyle BackColor="DarkSalmon" Font-Size="Large"></RowStyle>
       
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [Name], [EMAIL], [AGE], [GENDER], [REASON], [Discription], [Status], [Date], [SpecialistName] FROM [doctorload]">
    </asp:SqlDataSource>
    
   
    </td></table>
</asp:Content>

