<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Gerenciamento de Usuários
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Gerenciamento de Usuários</h2>

     <ul>
        <% foreach (KeyValuePair<string, string> dados in (Dictionary<string, string>)ViewData["OpcoesUsuarios"])
           {%>
        <li>
            <%: Html.ActionLink(dados.Key.ToString(), dados.Value.ToString(), "Usuario")%>
        </li>
        <%} %>
    </ul>

</asp:Content>
