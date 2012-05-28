<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SGRIMvc.Models.FUNCIONARIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Criar Login e Senha
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Criar Login e Senha</h2>

    <table>
        <tr>
            <th></th>
            <th>
                ID do Funcionário
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
            <th>
                Senha do Funcionário
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Criar", "Edit", new { id=item.IDFuncionario }) %> 
               
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
            <td>
                <%: item.Senha_Funcionario %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
         <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

