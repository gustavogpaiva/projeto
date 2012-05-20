<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.SALAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alterar</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Sala</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IDSala) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IDSala) %>
                <%: Html.ValidationMessageFor(model => model.IDSala) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Descricao_Sala) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Descricao_Sala) %>
                <%: Html.ValidationMessageFor(model => model.Descricao_Sala) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Localizacao_Sala) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Localizacao_Sala) %>
                <%: Html.ValidationMessageFor(model => model.Localizacao_Sala) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Capacidade_Sala) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Capacidade_Sala) %>
                <%: Html.ValidationMessageFor(model => model.Capacidade_Sala) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Tipo_Sala) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Tipo_Sala) %>
                <%: Html.ValidationMessageFor(model => model.Tipo_Sala) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

