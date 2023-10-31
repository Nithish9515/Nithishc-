<%@ Page Title="" Language="C#" MasterPageFile="General.master" AutoEventWireup="true" CodeFile="Searchpat.aspx.cs" Inherits="code_new_Searchpat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {font-size:25px;
         color:Blue;
         font-family:Times New Roman;
            }
            .style4
            {color:Black;
             font-size:20px;
             font-style:oblique;
             font-family:Times New Roman;
             width:50px;
             height:50px;
                }
                        .style7
                        {
                            width:20px;}
    .style8
    {
        width: 268px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style3">
    <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
    &nbsp;
    <asp:Label ID="lblhos" runat="server"></asp:Label></div>
    <table style="margin-left:10px;float:left;margin-bottom:300px;margin-top:10px" width="600px" height="600" cellpadding="2" cellspacing="3">
    <tr class="style4"><td> PatientEMAIL</td>
    <td class="style8"><asp:TextBox ID="search" runat="server" Width="265px"></asp:TextBox>&nbsp;&nbsp;<asp:ImageButton 
            ID="search_text" runat="server" 
            ImageUrl="HOS/sea.png" Width="160px" onclick="search_text_Click" /> </td></tr>
    
           <th class="style7"> <td class="style8">
            <asp:GridView ID="grview" runat="server" RowStyle-BackColor="DarkCyan" 
        BackColor="DarkGray" RowStyle-Font-Size="Medium" CellSpacing ="5"  OnRowCommand="grview_RowCommand"
        HeaderStyle-Font-Size="Medium"  HeaderStyle-Font-Bold="true" 
                AutoGenerateColumns="False" Width="148px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                         SortExpression="ID"  Visible="true" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" Visible="false" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                        SortExpression="GENDER" />
                    <asp:BoundField DataField="REASON" HeaderText="REASON" 
                        SortExpression="REASON" />
                    <asp:BoundField DataField="Discription" HeaderText="Discription" 
                        SortExpression="Discription" Visible="true" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"  Visible="false"/>
                    <asp:BoundField DataField="SpecialistName" HeaderText="SpecialistName" 
                        SortExpression="SpecialistName" />
                        <asp:ButtonField ButtonType="Button" Text="Download" CommandName="Select"  />
                </Columns>
                <HeaderStyle Font-Bold="True" Font-Size="Small"></HeaderStyle>
                <RowStyle BackColor="Chocolate" Font-Size="Large"></RowStyle>
       
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
                SelectCommand="SELECT [ID], [Name], [EMAIL], [AGE], [GENDER], [REASON], [Discription], [Date], [SpecialistName] FROM [doctorload]">
            </asp:SqlDataSource>
            </th></td>
    </table>
</asp:Content>

