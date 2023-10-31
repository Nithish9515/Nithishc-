<%@ Page Title="" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="Docx.aspx.cs" Inherits="code_new_Docx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {font-family:Times New Roman;
     font-style:oblique;
     font-size:20px;
     color:Orange;
        }
        .style3
        {
            margin-left:50px;
           margin-right:50px;
         
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style2">User Documents View</div>
    <div class="style3">
<asp:GridView ID="grview" runat="server" RowStyle-BackColor="DarkCyan" 
        BackColor="DarkGray" RowStyle-Font-Size="Large" CellSpacing ="5"  OnRowCommand="grview_RowCommand"
        HeaderStyle-Font-Size="X-Large"  HeaderStyle-Font-Bold="true" 
                AutoGenerateColumns="False" Width="148px" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="grview_SelectedIndexChanged">

              
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="REASON" HeaderText="REASON" 
                        SortExpression="REASON" />
                    <asp:BoundField DataField="Discription" HeaderText="Discription" 
                        SortExpression="Discription" />
                    <asp:BoundField DataField="Date" HeaderText="Date" 
                        SortExpression="Date" />
                    <asp:BoundField DataField="SpecialistName" HeaderText="SpecialistName" 
                        SortExpression="SpecialistName" />
                        <asp:ButtonField ButtonType="Button" Text="Download" CommandName="Select"  HeaderText="Attachement File" />

                </Columns>

              
                <HeaderStyle Font-Bold="True" Font-Size="Large"></HeaderStyle>
                <RowStyle BackColor="BlueViolet" Font-Size="Large"></RowStyle>
       
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" 
         SelectCommand="SELECT [ID], [Name], [EMAIL], [REASON], [Discription], [Date], [SpecialistName] FROM [doctorload] WHERE ([EMAIL] = @EMAILID)">
        <SelectParameters>
                <asp:SessionParameter Name="EMAILID" SessionField="EMAILID" Type="String" 
                    DefaultValue="1" />
            </SelectParameters>
        <%--<SelectParameters>
        <asp:QueryStringParameter  DefaultValue="1" NAME="EMAIL" QueryStringField="EMAILID"  
                Type="String"  /></SelectParameters>--%>
    </asp:SqlDataSource>
    </div>
</asp:Content>

