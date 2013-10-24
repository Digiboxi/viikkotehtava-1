<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ilmo.aspx.cs" Inherits="Ilmo_Ilmo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Läsnäolot</h1>
    <asp:TextBox runat="server" ID="TxtHaku"></asp:TextBox><asp:Button ID="btnHae" runat="server" Text="Hae" OnClick="btnHae_Click" /><br />
    <asp:DropDownList runat="server" ID="DropJakso"></asp:DropDownList>
    <br />
    <asp:GridView ID="Grid" runat="server">
    </asp:GridView>
</asp:Content>

