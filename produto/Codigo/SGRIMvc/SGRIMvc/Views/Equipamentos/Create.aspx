<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.EQUIPAMENTOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Incluir</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Equipamento</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IDEquipamento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IDEquipamento) %>
                <%: Html.ValidationMessageFor(model => model.IDEquipamento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Codigo_Patrimonio) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Codigo_Patrimonio) %>
                <%: Html.ValidationMessageFor(model => model.Codigo_Patrimonio) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Tipo_Equipamento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Tipo_Equipamento) %>
                <%: Html.ValidationMessageFor(model => model.Tipo_Equipamento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Descricao_Equipamento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Descricao_Equipamento) %>
                <%: Html.ValidationMessageFor(model => model.Descricao_Equipamento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Status_Equipamento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Status_Equipamento) %>
                <%: Html.ValidationMessageFor(model => model.Status_Equipamento) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

