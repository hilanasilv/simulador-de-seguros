using System;

namespace SimuladorSeguros
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Captura os dados enviados via query string
                string nome = Request.QueryString["nome"];
                string sobrenome = Request.QueryString["sobrenome"];
                string dataNascimento = Request.QueryString["dataNascimento"];
                string cpf = Request.QueryString["cpf"];
                string tipoSeguro = Request.QueryString["tipoSeguro"];

                // Calcula o valor do seguro com base no tipo de seguro
                decimal valorBase = 1000;
                decimal percentual = ObterPercentualSeguro(tipoSeguro);
                decimal valorSeguro = valorBase * percentual;

                // Exibe as informações do usuário e o valor do seguro calculado
                lblNome.Text = $"Nome: {nome} {sobrenome}";
                lblDataNascimento.Text = $"Data de Nascimento: {DateTime.Parse(dataNascimento).ToString("dd/MM/yyyy")}";
                lblCpf.Text = $"CPF: {cpf}";
                lblTipoSeguro.Text = $"Tipo de Seguro: {ObterNomeSeguro(tipoSeguro)}";
                lblValorSeguro.Text = $"Valor Total do Seguro: {valorSeguro:C}";
            }
        }

        private string ObterNomeSeguro(string tipoSeguro)
        {
            switch (tipoSeguro)
            {
                case "1": return "Seguro de Vida";
                case "2": return "Morte Acidental";
                case "3": return "Seguro contra Acidentes Pessoais";
                case "4": return "Seguro de Saúde";
                case "5": return "Seguro de Automóvel";
                case "6": return "Seguro Residencial";
                case "7": return "Seguro Patrimonial";
                case "8": return "Seguro Empresarial";
                default: return "Seguro Desconhecido";
            }
        }

        // Método para obter o percentual de cálculo com base no tipo de seguro
        private decimal ObterPercentualSeguro(string tipoSeguro)
        {
            switch (tipoSeguro)
            {
                case "1": return 0.80m; // Seguro de Vida
                case "2": return 0.90m; // Seguro de Morte Acidental
                case "3": return 0.50m; // Seguro contra Acidentes Pessoais
                case "4": return 0.40m; // Seguro de Saúde
                case "5": return 2.50m; // Seguro de Automóvel
                case "6": return 0.60m; // Seguro Residencial
                case "7": return 1.20m; // Seguro Patrimonial
                case "9": return 1.50m; // Seguro Empresarial
                default: return 1.0m;
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form.aspx");
        }

    }
}