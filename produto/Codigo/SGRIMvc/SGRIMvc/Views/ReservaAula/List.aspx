<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.RESERVA_AULAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>List</h2>

    <table>
        <tr>
            <th></th>
            <th>
                IDReserva_Aula
            </th>
            <th>
                Data_Reserva
            </th>
            <th>
                Professor_Aula
            </th>
            <th>
                Disciplina_Aula
            </th>
            <th>
                Horario_Aula
            </th>
            <th>
                Dia_Aula
            </th>
            <th>
                Equipamento_Aula
            </th>
            <th>
                Sala_Aula
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
               
              <%: Html.ActionLink("Cancelar Reserva", "Delete", new { id=item.IDReserva_Aula })%>
            </td>
            <td>
                <%: item.IDReserva_Aula %>
            </td>
            <td>
                <%: item.Data_Reserva %>
            </td>
            <td>
                <%: item.Professor_Aula %>
            </td>
            <td>
                <%: item.Disciplina_Aula %>
            </td>
            <td>
                <%: item.Horario_Aula %>
            </td>
            <td>
                <%: item.Dia_Aula %>
            </td>
            <td>
                <%: item.Equipamento_Aula %>
            </td>
            <td>
                <%: item.Sala_Aula %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

