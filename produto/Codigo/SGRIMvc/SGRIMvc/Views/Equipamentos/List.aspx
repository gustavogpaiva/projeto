<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.EQUIPAMENTOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Listar</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID do Equipamento
            </th>
            <th>
                Código do Patrimônio
            </th>
            <th>
                Tipo do Equipamento
            </th>
            <th>
                Descrição do Equipamento
            </th>
            <th>
                Status do Equipamento
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.IDEquipamento }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.IDEquipamento })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.IDEquipamento })%>
            </td>
            <td>
                <%: item.IDEquipamento %>
            </td>
            <td>
                <%: item.Codigo_Patrimonio %>
            </td>
            <td>
                <%: item.Tipo_Equipamento %>
            </td>
            <td>
                <%: item.Descricao_Equipamento %>
            </td>
            <td>
                <%: item.Status_Equipamento %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

