<%@ Page Title="New Order" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="NewOrder.aspx.vb" Inherits="NewOrder" %>

    
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 157px;
        }
        .style2
        {
            width: 153px;
        }
        .auto-style1 {
            width: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>

    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                Order iD</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td class="auto-style1">
                Customer ID</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Item</td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                Cost</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td class="auto-style1">
                Stock ID</td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style1">
              </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
           
        </tr>
    </table>

<br />

</div>
</asp:Content>