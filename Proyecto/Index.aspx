<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--URL WEBSERVICE http://wsf.cdyne.com/WeatherWS/Weather.asmx--%>
        <asp:TextBox ID="txtCodigo" runat="server" ToolTip="Codigo a buscar" Text="22041"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Llamar web service" OnClick="LlamarWebService"/>
        <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
