<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="DocorStatus.aspx.cs" Inherits="DocorStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.style2
{ font-size:20px;
  color:Purple;
  font-family:Times New Roman;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:50px;float:left; height:200px;margin-right:200px" width="550px"
<tr><td class="style2">Doctor Details<strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="Azure" 
        BackColor="Crimson" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 

       AutoGenerateColumns="False"  DataSourceID="SqlDataSource2"  
        AllowSorting="True" onselectedindexchanged="grview_SelectedIndexChanged">
        <Columns>
           <%-- <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />--%>
            <%--<asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID" />--%>

           <%-- <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />--%>

            <%--<asp:BoundField DataField="PermisisionReason" HeaderText="PermisisionReason" 
                SortExpression="PermisisionReason" />--%>
                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" 
                SortExpression="DoctorName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                SortExpression="Qualification" />
            <asp:BoundField DataField="Specialist" HeaderText="Specialist" 
                SortExpression="Specialist" />
            <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
         
                  </Columns>
<HeaderStyle Font-Bold="True" Font-Size="Larger"></HeaderStyle>

<RowStyle BackColor="BlueViolet" Font-Size="Large"></RowStyle>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [DoctorName], [Gender], [Qualification], [Specialist], [EMailID], [Mobile], [Address] FROM [Doctor]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [Name], [EMailID], [Date], [PermisisionReason] FROM [DoctorR]">
    </asp:SqlDataSource>
    </td>
        </table>
</asp:Content>

