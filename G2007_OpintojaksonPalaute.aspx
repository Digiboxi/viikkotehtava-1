<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2007_OpintojaksonPalaute.aspx.cs" Inherits="G2007_OpintojaksonPalaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1">
        <tr>
            <td>
                <h1>Anna palaute</h1>
                Nimi:<asp:TextBox ID="txtNimi" runat="server"></asp:TextBox><br />
                Olen oppinut:<asp:TextBox ID="txtOppinut" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                Haluan oppia:<asp:TextBox ID="txtHaluanoppia" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <h1>palaute jatkuu</h1>
                Hyvää:<asp:TextBox ID="txtHyvaa" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                Parannettavaa:<asp:TextBox ID="txtParannettavaa" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                Muuta:<asp:TextBox ID="txtMuuta" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                <asp:Button ID="submit" runat="server" Text="Lähetä palaute" OnClick="NapinPainallus" />
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="nayta" runat="server" Text="Näytä XML" OnClick="nayta_Click" /></td>
        </tr>
    </table>
    <div id="teksti" runat="server">
    </div>
</asp:Content>

