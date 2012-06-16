<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.FUNCIONARIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Listar Funcionários
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Listar Funcionários</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID Funcionario
            </th>
            <th>
                Matricula do Funcionário
            </th>
            <th>
                Nome do Funcionário
            </th>
            <th>
                Tipo do Funcionário
            </th>
            <th>
                Cargo do Funcionário
            </th>
            <th>
                Login do Funcionário
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit","Edit2", new { id=item.IDFuncionario}) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.IDFuncionario })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.IDFuncionario })%>
            </td>
            <td>
                <%: item.IDFuncionario %>
            </td>
            <td>
                <%: item.Matricula_Funcionario %>
            </td>
            <td>
                <%: item.Nome_Funcionario %>
            </td>
            <td>
                <%: item.Tipo_Funcionario %>
            </td>
            <td>
                <%: item.Cargo_Funcionario %>
            </td>
            <td>
                <%: item.Login_Funcionario %>
            </td>
        
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

