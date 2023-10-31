<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width:600px;
    }
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: right;
            width: 100px;
            font-style:oblique;
        }
        .style4
        {
            text-align: justify;
        }
        .style5
        {
            text-align: justify;
            width: 199px;
        }
        .style6
        {font-size:25px;
      font-family:Times New Roman;
      color:Black;
            }
            .right{}
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="style6"></div>
    <table style =" margin-left:10px; float:left; height: 128px;" cellspacing="8" class="style1">
    <tr>
        <td class="style3" >&nbsp;
            </td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;
            <br />
        </td>
        <td class="style4">&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style3" >
            Email&nbsp; ID</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUserID" runat="server" Height="25px" Width="180px" 
                ontextchanged="txtUserID_TextChanged1"></asp:TextBox>
            <br />
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtUserName" 
                ErrorMessage="Please Enter The E-Mail Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3" >
            User Name</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUserName" runat="server" Width="178px"></asp:TextBox>
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtUserName" 
                ErrorMessage="Please Enter The User Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3" >
            Password</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="176px"></asp:TextBox>
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="txtPassword" 
                ErrorMessage="Please Enter The Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="style3" >
            Conform Password</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtConformPassword" runat="server" TextMode="Password" 
                Width="176px"></asp:TextBox>
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtConformPassword" 
                ErrorMessage="Please Enter The Conform Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtConformPassword" ControlToValidate="txtPassword" 
                ErrorMessage="Please Enter The Same Password" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr class="style3"><td>Gender</td><td>
        <asp:DropDownList ID ="drop2" runat="server" 
            Width="192px" Height="16px">
<asp:ListItem>---Select---</asp:ListItem>
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem></asp:DropDownList></td> 
 </tr>
    <tr>
        <td class="style3" >
            Address</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Height="83px" TextMode="MultiLine" 
                Width="198px" ontextchanged="txtAddress_TextChanged"></asp:TextBox>
            <br />
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtAddress" ErrorMessage="Please Enter The Address" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
  <%--  <tr>
   <td class="style3">Select State</td> 
   <td><asp:ListBox ID ="listbox1" runat ="server"  AutoPostBack="true">
   <asp:ListItem >Tamilnadu</asp:ListItem>
   <asp:ListItem>Andhra Pradesh</asp:ListItem>
   <asp:ListItem>Karnataka</asp:ListItem>
   <asp:ListItem>Kerala </asp:ListItem>
   <asp:ListItem>Maharashtra</asp:ListItem>
   <asp:ListItem>Haryana</asp:ListItem>
   <asp:ListItem>Maharashtra</asp:ListItem>
   <asp:ListItem>Tripura </asp:ListItem>
      </asp:ListBox></td></tr>--%>

    <tr>
        <td class="style3" >
            Zip Code</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtZipCode" runat="server" Height="25px" Width="185px"></asp:TextBox>
            <br />
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtZipCode" ErrorMessage="Please Enter The Zip Code" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3" >
            Mobile No</td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMobileNo" runat="server" Height="25px" 
                ontextchanged="txtMobileNo_TextChanged" Width="173px"></asp:TextBox>
            <br />
            <br />
        </td>
        <td class="style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtMobileNo" ErrorMessage="Please Enter The Mobile Number" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    
    <tr>
        <td class="style3" >&nbsp;
            </td>
        <td class="style5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" onclick="Button1_Click" Text="Register" 
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
                Width="108px" BackColor="#9999FF" style="height: 29px" 
                 />
        &nbsp;</td>
        <td class="style4">&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style3" >&nbsp;
            </td>
        <td class="style5">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
        </td>
        <td class="style4">&nbsp;
            </td>
    </tr>
</table>
<div class="right"><asp:Image ID="image1" runat="server" ImageUrl="HOS/reg.jpg" 
        Width="241px" /></div>
</asp:Content>



