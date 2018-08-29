<%@ Page Title="SurveyJS Editor Demo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyEditor.aspx.cs" Inherits="surveyjs_webforms.SurveyEditor" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>SurveyJS Library ASP.NET Web Forms integration demo.</h3>
    <p></p>
    <div id="surveyContainer">
        <div id="editorElement"></div>
    </div>
    <script type="text/javascript">
        var editorOptions = {};
        var editor = new SurveyEditor.SurveyEditor("editorElement", editorOptions);
    </script>
</asp:Content>
