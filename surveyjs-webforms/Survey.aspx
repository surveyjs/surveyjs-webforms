<%@ Page Title="SurveyJS Library Demo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="surveyjs_webforms.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>SurveyJS Library ASP.NET Web Forms integration demo.</h3>
    <p></p>
    <div id="surveyElement"></div>
    <div id="surveyResult"></div>
    <script type="text/javascript">
        Survey
            .StylesManager
            .applyTheme("default");

        var json = {
            questions: [
                {
                    name: "name",
                    type: "text",
                    title: "Please enter your name:",
                    placeHolder: "Jon Snow",
                    isRequired: true
                }, {
                    name: "birthdate",
                    type: "text",
                    inputType: "date",
                    title: "Your birthdate:",
                    isRequired: true
                }, {
                    name: "color",
                    type: "text",
                    inputType: "color",
                    title: "Your favorite color:"
                }, {
                    name: "email",
                    type: "text",
                    inputType: "email",
                    title: "Your e-mail:",
                    placeHolder: "jon.snow@nightwatch.org",
                    isRequired: true,
                    validators: [
                        {
                            type: "email"
                        }
                    ]
                }
            ]
        };

        window.survey = new Survey.Model(json);

        survey
            .onComplete
            .add(function(result) {
                document
                    .querySelector('#surveyResult')
                    .innerHTML = "result: " + JSON.stringify(result.data);
            });

        survey.render("surveyElement");
    </script>
</asp:Content>
