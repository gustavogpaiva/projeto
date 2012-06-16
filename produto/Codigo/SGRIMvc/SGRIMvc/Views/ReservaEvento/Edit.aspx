<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.RESERVA_EVENTOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IDReserva_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IDReserva_Evento) %>
                <%: Html.ValidationMessageFor(model => model.IDReserva_Evento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nome_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nome_Evento) %>
                <%: Html.ValidationMessageFor(model => model.Nome_Evento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Data_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Data_Evento) %>
                <%: Html.ValidationMessageFor(model => model.Data_Evento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Prorfessores_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Prorfessores_Evento) %>
                <%: Html.ValidationMessageFor(model => model.Prorfessores_Evento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Sala_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Sala_Evento) %>
                <%: Html.ValidationMessageFor(model => model.Sala_Evento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Equipamentos_Evento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Equipamentos_Evento) %>
                <%: Html.ValidationMessageFor(model => model.Equipamentos_Evento) %>
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

