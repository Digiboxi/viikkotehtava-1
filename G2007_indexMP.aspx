<%@ Page Title="Villen kotisivu." Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2007_indexMP.aspx.cs" Inherits="G2007_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:hyperlink runat="server" ID="HyperLink1" NavigateUrl="~/tehtava1.aspx">Linkki</asp:hyperlink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/G2007_LocalDBDemo.aspx">HyperLink</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/asd_age.aspx">Vuosiluvut</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/G2007_Valuuttamuunnin.aspx">Valuuttamuunnin</asp:HyperLink>
    </div>
</asp:Content>

