<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Cancel.aspx.cs" Inherits="Cancel" %>

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
    <table style="margin-left:200px;float:left; height:128px;margin-right:200px">
<tr><td class="style2">Patient Details For AppointMent <strong></td></tr>
<tr>
<td id="Td1" align="center" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" 
                SortExpression="PatientName"/>
            <asp:BoundField DataField="EMailID" HeaderText="EMailID" 
                SortExpression="EMailID" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" />
            <asp:BoundField DataField="AllotedTime" HeaderText="AllotedTime" 
                SortExpression="AllotedTime" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
        SelectCommand="SELECT [PatientName], [EMailID], [Reason], [AllotedTime] FROM [CanApp]"></asp:SqlDataSource>
        </td></table>
</asp:Content>

