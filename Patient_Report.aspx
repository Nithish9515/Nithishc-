<%@ Page Title="" Language="C#" MasterPageFile="General.master" AutoEventWireup="true" CodeFile="Patient_Report.aspx.cs" Inherits="PatientReport" %>

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
    <table style="margin-left:50px;float:left; height:128px; margin-right:200px">
<tr><td class="style2"><strong>Patient Information</strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="2"  
        HeaderStyle-Font-Size="Larger"  HeaderStyle-Font-Bold="true" 
        DataSourceID="SqlDataSource2" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                SortExpression="ZipCode" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
        </Columns>
<HeaderStyle Font-Bold="True" Font-Size="Medium"></HeaderStyle>

<RowStyle BackColor="DarkKhaki" Font-Size="Large"></RowStyle>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        
        
        SelectCommand="SELECT [EmailID], [UserName], [Gender], [Address], [ZipCode], [MobileNo] FROM [Register]">
    </asp:SqlDataSource>

        </td>
    </table>
    
</asp:Content>

