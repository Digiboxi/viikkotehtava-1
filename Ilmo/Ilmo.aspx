<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ilmo.aspx.cs" Inherits="Ilmo_Ilmo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Läsnäolot</h1>
    <asp:TextBox runat="server" ID="TxtHaku"></asp:TextBox><asp:Button ID="btnHae" runat="server" Text="Hae" OnClick="btnHae_Click" /><br />
    <asp:DropDownList runat="server" ID="DropJakso" DataSourceID="srcIlmot" DataTextField="course" DataValueField="course" OnSelectedIndexChanged="DropJakso_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="srcIlmot" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>"
        SelectCommand="SELECT DISTINCT [course] FROM [lasnaolot]" runat="server">

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsNimiHakuHelvetti" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT [lastname], [firstname], [date], [course] FROM [lasnaolot] WHERE (([lastname] = @lastname) AND ([course] = @course))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtHaku" Name="lastname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DropJakso" Name="course" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="asd" runat="server" DataSourceID="dsNimiHakuHelvetti">
    </asp:GridView>
</asp:Content>

