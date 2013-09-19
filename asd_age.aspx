<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="asd_age.aspx.cs" Inherits="asd_age" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="paivamaara" runat="server" Text="Label" OnInit="paivamaara_Init"></asp:Label><br />
    <asp:Label ID="valittuPaiva" runat="server" Text="Label" OnInit="valittuPaiva_Init"></asp:Label><br />
    <asp:Label ID="paivienErotus" runat="server" Text="Label" OnInit="paivienErotus_Init"></asp:Label><br />
    <asp:Button ID="vuosiTaakse" runat="server" Text="<-- Vuosi" OnClick="vuosiTaakse_Click" />
    <asp:Button ID="vuosiEteen" runat="server" Text="Vuosi -->" OnClick="vuosiEteen_Click" />
    <br />
    <asp:Calendar ID="kalenteri" runat="server" Height="210px" Width="231px" OnInit="kalenteri_Init" OnSelectionChanged="valittuPaiva_Init"></asp:Calendar>
</asp:Content>

