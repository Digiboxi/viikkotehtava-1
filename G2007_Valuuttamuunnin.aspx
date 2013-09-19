<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2007_Valuuttamuunnin.aspx.cs" Inherits="G2007_Valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Terve: <asp:TextBox ID="nimi" runat="server"></asp:TextBox>
    <br />
    Muunnan bitcoinit euroiksi, anna bitcoinien määrä: 
    <asp:TextBox ID="muunnettava" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="muunna" runat="server" Text="Muunna" OnClick="muunna_Click" />
&nbsp;<br />
    <br />
    <asp:Label ID="lblCurrency" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:ListBox ID="lstOne" runat="server"></asp:ListBox>
    <asp:ListBox ID="lstTwo" runat="server" EnableViewState="False"></asp:ListBox>
&nbsp; 
</asp:Content>

