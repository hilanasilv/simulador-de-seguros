<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="SimuladorSeguros.Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Resultado da simulação" />
    <link rel="stylesheet" href="./styles/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="result mt-xl-5">
        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                    <th scope="col" class="text-center">Resumo da Simulação</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:Label ID="lblNome" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDataNascimento" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCpf" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTipoSeguro" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblValorSeguro" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="text-center no-print">
            <asp:Button ID="Button1" runat="server" Text="Voltar" OnClick="btnVoltar_Click" CssClass="btn btn-primary me-2" role="button" />
            <asp:Button ID="Button2" runat="server" Text="Imprimir" OnClientClick="window.print(); return false;" CssClass="btn btn-success" role="button" />
        </div>


    </div>
</asp:Content>
