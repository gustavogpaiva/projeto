<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SGRIMvc.Models.FUNCIONARIOS>" CodeBehind="~/Views/Usuario/Edit.aspx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Login e Senha
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <h2>Login e Senha</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Campos</legend>
            
                    
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
               


                <%: Html.ActionLink("Enviar Senha aleatória", "EnviaSenhaAleatoria")%>
                <br />
                <br />
            </div>
            
            <p>
                <input type="submit" value="Salvar"  />     
     
                </p>



        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

    </form>

</asp:Content>

