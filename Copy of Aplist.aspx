<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Copy of Aplist.aspx.cs" Inherits="Aplist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:20px;
  color:Orange;
  font-family:Times New Roman;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:200px;float:left; height:128px;margin-right:200px"
<tr><td class="style2">Patient Details For AppointMent <strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="5"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 

       AutoGenerateColumns="true">
        
        <%--<Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" 
                SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" 
                SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
                <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" 
                SortExpression="E-Mail" />
            <asp:BoundField DataField="AppointMent" HeaderText="AppointMent" 
                SortExpression="AppointMent" />
            <asp:BoundField DataField="Time" HeaderText="Time" 
                SortExpression="Time" />
            <asp:BoundField DataField="Disease" HeaderText="Disease" 
                SortExpression="Disease" />
                 <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>--%>
        </asp:GridView>
         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT [ID], [Name], [DateOfBirth], [Mobile], [E-Mail] AS column1, [AppointMent], [Time], [Disease], [Status] FROM [Booking]">
    </asp:SqlDataSource>--%>
   
</td></tr></table>
</asp:Content>

