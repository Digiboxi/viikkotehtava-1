<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyRegExTeht.aspx.cs" Inherits="MyRegEx_MyRegEx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>ReqEx-testi</h1>
    <h2>Kirjota shittii:</h2>
    <asp:TextBox ID="TxtName" runat="server" OnTextChanged="TxtName_TextChanged"></asp:TextBox>
    <asp:Label ID="LblError" runat="server"></asp:Label>
    <br />
    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
    <asp:Button ID="BtnSend" runat="server" Text="Button" OnClick="BtnSend_Click" />
    <h2>Sivun teeman vaihto</h2>
    <asp:Image ID="kuva" runat="server" SkinID="CompanyLogo" /><br />
    <asp:HyperLink ID="asd" runat="server" NavigateUrl="~/MyRegEx/MyRegExTeht.aspx?theme=SusiRuma">Susi Ruma</asp:HyperLink><br />
    <asp:HyperLink ID="asdf" runat="server" NavigateUrl="~/MyRegEx/MyRegExTeht.aspx?theme=Juuso">Juuso</asp:HyperLink>
</asp:Content>

