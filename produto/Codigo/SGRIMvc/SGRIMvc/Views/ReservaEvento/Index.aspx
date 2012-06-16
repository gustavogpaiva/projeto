<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gerenciamento de Reservas para Eventos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Gerenciamento de Reservas para Eventos</h2>

    <ul>
        <% foreach (KeyValuePair<string, string> dados in (Dictionary<string, string>)ViewData["OpcoesReservaEventos"])
           {%>
        <li>
            <%: Html.ActionLink(dados.Key.ToString(), dados.Value.ToString(), "ReservaEvento")%>
        </li>
        <%} %>
    </ul>

</asp:Content>
