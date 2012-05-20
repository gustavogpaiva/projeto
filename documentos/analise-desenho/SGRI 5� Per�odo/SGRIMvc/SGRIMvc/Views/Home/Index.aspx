<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
<h2><%: ViewData["Message"] %></h2>
    <p>
        Acesse o site da PUC clicando  <a href="http://pucminas.br/destaques/" title="Portal PUC Minas">aqui</a>.
    </p>
<p>
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/Content/6310298074_e99676cd08_z.jpg" />
</p>
</form>
</asp:Content>
