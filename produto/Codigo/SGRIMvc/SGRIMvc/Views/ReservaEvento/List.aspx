<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.RESERVA_EVENTOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Reservas</h2>

    <table>
        <tr>
            <th></th>
            <th>
                IDReserva Evento
            </th>
            <th>
                Nome Evento
            </th>
            <th>
                Data Evento
            </th>
            <th>
                Prorfessores Evento
            </th>
            <th>
                Sala Evento
            </th>
            <th>
                Equipamentos Evento
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Alterar", "Edit", new { id=item.IDReserva_Evento }) %> |
                <%: Html.ActionLink("Cancelar Reserva", "Delete", new { id=item.IDReserva_Evento })%>
            </td>
            <td>
                <%: item.IDReserva_Evento %>
            </td>
            <td>
                <%: item.Nome_Evento %>
            </td>
            <td>
                <%: item.Data_Evento %>
            </td>
            <td>
                <%: item.Prorfessores_Evento %>
            </td>
            <td>
                <%: item.Sala_Evento %>
            </td>
            <td>
                <%: item.Equipamentos_Evento %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

