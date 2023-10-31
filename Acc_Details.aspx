<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Acc_Details.aspx.cs" Inherits="AccountDetails" %>

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
    <table style="margin-left:200px;float:left; height:128px; margin-right:200px"
<tr><td class="style2">User Details <strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="white" 
        BackColor="CadetBlue" RowStyle-Font-Size="Large" CellSpacing ="10"  
        HeaderStyle-Font-Size="X-Large"  HeaderStyle-Font-Bold="true" 
        DataSourceID="SqlDataSource2" 
        onselectedindexchanged="grview_SelectedIndexChanged" 
        AutoGenerateColumns="False"  >
       
        <Columns>
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                SortExpression="ZipCode" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
        </Columns>
<HeaderStyle Font-Bold="True" Font-Size="X-Large"></HeaderStyle>

<RowStyle BackColor="White" Font-Size="Large"></RowStyle>
       
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constring %>" 
        
        SelectCommand="SELECT [EmailID], [UserName], [Address], [ZipCode], [MobileNo] FROM [Register]">
    </asp:SqlDataSource>
</td>
</tr></table>
</asp:Content>

