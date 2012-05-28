<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Importações de Arquivos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Importações de Arquivos</h2>

      <ul>
        <% foreach (KeyValuePair<string, string> dados in (Dictionary<string, string>)ViewData["OpcoesImportacao"])
           {%>
        <li>
            <%: Html.ActionLink(dados.Key.ToString(), dados.Value.ToString(), "Importar")%>
        </li>
        <%} %>
    </ul>

</asp:Content>
