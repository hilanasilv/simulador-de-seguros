<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="SimuladorSeguros.Form" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Formulário de simulação" />
    <link rel="stylesheet" href="./styles/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <div class="container">
        <p class="text-center text-muted mt-lg-5">Preencha os campos abaixo para simular o seu seguro.</p>

        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-12">
                <div class="form-container">
                    <div class="form-group">
                        <asp:Label ID="lblNome" runat="server" Text="Nome: *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" placeholder="Digite o nome"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqNome" runat="server" ControlToValidate="txtNome"
                            ErrorMessage="O campo Nome é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome: *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtSobrenome" runat="server" CssClass="form-control" placeholder="Digite o sobrenome"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqSobrenome" runat="server" ControlToValidate="txtSobrenome"
                            ErrorMessage="O campo Sobrenome é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblNascimento" runat="server" Text="Data de Nascimento: *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtNascimento" runat="server" CssClass="form-control" placeholder="dd/mm/aaaa"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtNascimento" />
                        <asp:RequiredFieldValidator ID="reqDataNascimento" runat="server" ControlToValidate="txtSobrenome"
                            ErrorMessage="O campo Data de Nascimento é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblErroIdade" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblCPF" runat="server" Text="CPF: *" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control" placeholder="000.000.000-00"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqCPF" runat="server" ControlToValidate="txtCPF"
                            ErrorMessage="O campo CPF é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblErroCpf" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="lblSeguro" runat="server" Text="Tipo de Seguro:" CssClass="form-label"></asp:Label>
                        <asp:DropDownList ID="ddlSeguro" runat="server" CssClass="form-control">
                            <asp:ListItem Value="1">Seguro de Vida</asp:ListItem>
                            <asp:ListItem Value="2">Seguro de Morte Acidental</asp:ListItem>
                            <asp:ListItem Value="3">Seguro contra Acidentes Pessoais</asp:ListItem>
                            <asp:ListItem Value="4">Seguro de Saúde</asp:ListItem>
                            <asp:ListItem Value="5">Seguro de Automóvel</asp:ListItem>
                            <asp:ListItem Value="6">Seguro Residencial</asp:ListItem>
                            <asp:ListItem Value="7">Seguro Patrimonial</asp:ListItem>
                            <asp:ListItem Value="8">Seguro Empresarial</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group text-center mt-4">
                        <asp:Button ID="btnEnviar" runat="server" Text="Simular Seguro" CssClass="btn btn-success" OnClick="btnEnviar_Click" role="button" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
