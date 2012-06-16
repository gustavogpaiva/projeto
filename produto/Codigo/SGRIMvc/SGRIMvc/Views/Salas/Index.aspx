<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gerenciamento de Salas
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Gerenciamento de Salas</h2>

    <ul>
        <% foreach (KeyValuePair<string, string> dados in (Dictionary<string, string>)ViewData["OpcoesSalas"])
           {%>
        <li>
            <%: Html.ActionLink(dados.Key.ToString(), dados.Value.ToString(), "Salas")%>
        </li>
        <%} %>
    </ul>

</asp:Content>
