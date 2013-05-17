<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" 
    CodeFile="AccessStock.aspx.vb" Inherits="AccessStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h1>All Stock</h1>
    
            <asp:GridView ID="GridView1" runat="server"
             CssClass="DataWebControlStyle" CellPadding="4" ForeColor="#333333" GridLines="None">
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle CssClass="HeaderStyle" BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <AlternatingRowStyle CssClass="AlternatingRowStyle" BackColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

</asp:Content>

