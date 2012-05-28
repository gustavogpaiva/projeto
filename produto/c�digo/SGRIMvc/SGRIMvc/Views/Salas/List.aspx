<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.SALAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Listar</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID da Sala
            </th>
            <th>
                Descrição da Sala
            </th>
            <th>
                Localização da Sala
            </th>
            <th>
                Capacidade da Sala
            </th>
            <th>
                Tipo da Sala
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.IDSala }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.IDSala })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.IDSala })%>
            </td>
            <td>
                <%: item.IDSala %>
            </td>
            <td>
                <%: item.Descricao_Sala %>
            </td>
            <td>
                <%: item.Localizacao_Sala %>
            </td>
            <td>
                <%: item.Capacidade_Sala %>
            </td>
            <td>
                <%: item.Tipo_Sala %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

