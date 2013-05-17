<%@ Page Title="Error" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" 
    CodeFile="lasterror.aspx.vb" Inherits="lasterror" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
     <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .auto-style1 {
            width: 556px;
            height: 317px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <p class="MsoNormal">
        <span style="font-size: 11.0pt; line-height: 115%; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-ansi-language: EN-IE; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Sorry, there has been an error on our website. Please
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Click here</asp:HyperLink>
&nbsp;to continue.</span></p>

 <p class="MsoNormal">
        &nbsp;</p>
    <p class="MsoNormal">
        <img alt="newerror" class="auto-style1" src="images/Error.jpg" /></p>
    
    <p class="MsoNormal">
        <o:p>
        </o:p>
    </p>

</asp:Content>

