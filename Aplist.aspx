<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Aplist.aspx.cs" Inherits="Aplist" %>

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
    <table style="margin-left:50px;float:left; height:300px;margin-right:200px" width="550px">
<tr><td class="style2">Patient Details For AppointMent <strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 

       AutoGenerateColumns="False"  DataSourceID="SqlDataSource1"  
        AllowSorting="True" onselectedindexchanged="grview_SelectedIndexChanged3">
       
        
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" 
                SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" 
                SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile"/>
                <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID"/>
            <asp:BoundField DataField="AppointMent" HeaderText="AppointMent" 
                SortExpression="AppointMent" />
            <asp:BoundField DataField="Time" HeaderText="Time" 
                SortExpression="Time" />
            <asp:BoundField DataField="Disease" HeaderText="Disease" 
                SortExpression="Disease" />
                 <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
<asp:HyperLinkField  DataNavigateUrlFields="EMailID,Name,Time" DataNavigateUrlFormatString="Mailconf.aspx?EMailID={0}&Name={1}&Time={2}" Text="Mail"  />
        </Columns>

<HeaderStyle Font-Bold="True" Font-Size="Larger"></HeaderStyle>

<RowStyle BackColor="White" Font-Size="Large"></RowStyle>
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        
        SelectCommand="SELECT [ID], [Name], [DateOfBirth], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status] FROM [BookingNew]">
    </asp:SqlDataSource>
         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT [ID], [Name], [DateOfBirth], [Mobile], [E-Mail] AS column1, [AppointMent], [Time], [Disease], [Status] FROM [Booking]">
    </asp:SqlDataSource>--%>
   
</td>
</tr></table>
</asp:Content>

