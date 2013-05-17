﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" 
    CodeFile="XML.aspx.vb" Inherits="XML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <script>
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET", "Stock.xml", false);
        xmlhttp.send();
        xmlDoc = xmlhttp.responseXML;
        document.write("<table border='1'>");
        var x = xmlDoc.getElementsByTagName("Stock");
        for (i = 0; i < x.length; i++) {
            document.write("<tr><td>");
            document.write(x[i].getElementsByTagName("Description")[0].childNodes[0].nodeValue);
            document.write("</td><td>");
            document.write(x[i].getElementsByTagName("Price")[0].childNodes[0].nodeValue);
            document.write("</td></tr>");
        }
        document.write("</table>");
</script>

</asp:Content>

