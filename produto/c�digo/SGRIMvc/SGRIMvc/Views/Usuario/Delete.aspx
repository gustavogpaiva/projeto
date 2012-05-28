<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.FUNCIONARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Excluir
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Excluir</h2>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">IDFuncionario</div>
        <div class="display-field"><%: Model.IDFuncionario %></div>
        
        <div class="display-label">Matricula_Funcionario</div>
        <div class="display-field"><%: Model.Matricula_Funcionario %></div>
        
        <div class="display-label">Nome_Funcionario</div>
        <div class="display-field"><%: Model.Nome_Funcionario %></div>
        
        <div class="display-label">Tipo_Funcionario</div>
        <div class="display-field"><%: Model.Tipo_Funcionario %></div>
        
        <div class="display-label">Cargo_Funcionario</div>
        <div class="display-field"><%: Model.Cargo_Funcionario %></div>
        
        <div class="display-label">Login_Funcionario</div>
        <div class="display-field"><%: Model.Login_Funcionario %></div>
        
        <div class="display-label">Senha_Funcionario</div>
        <div class="display-field"><%: Model.Senha_Funcionario %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

