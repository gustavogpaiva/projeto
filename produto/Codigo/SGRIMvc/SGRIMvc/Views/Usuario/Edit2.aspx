<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.FUNCIONARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Alterar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alterar</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IDFuncionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IDFuncionario) %>
                <%: Html.ValidationMessageFor(model => model.IDFuncionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Matricula_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Matricula_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Matricula_Funcionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nome_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nome_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Nome_Funcionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Tipo_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Tipo_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Tipo_Funcionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cargo_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cargo_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Cargo_Funcionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Login_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Login_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Login_Funcionario) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Senha_Funcionario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Senha_Funcionario) %>
                <%: Html.ValidationMessageFor(model => model.Senha_Funcionario) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index")%>
       
    </div>

</asp:Content>

