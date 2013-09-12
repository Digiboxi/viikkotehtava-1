<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2007_LocalDBDemo.aspx.cs" Inherits="G2007_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tässä kotimaisia rainoja (oliokokoelma)</h1>

    </div>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" />
        <asp:DataList ID="myDataList" runat="server" OnSelectedIndexChanged="myDataList_SelectedIndexChanged">
            <ItemTemplate>Elokuvan <%#Eval("Title") %> ohjannut <%#Eval("Director") %></ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
