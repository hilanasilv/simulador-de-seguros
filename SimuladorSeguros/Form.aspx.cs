using System;
using System.Linq;

namespace SimuladorSeguros
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Verifica se a página é válida antes de continuar
            if (Page.IsValid)
            {
                // Captura os dados do formulário
                string nome = txtNome.Text;
                string sobrenome = txtSobrenome.Text;
                string dataNascimento = txtNascimento.Text;
                string cpf = txtCPF.Text;
                string tipoSeguro = ddlSeguro.SelectedValue;

                // Valida se o usuário tem mais de 18 anos
                if (!ValidarIdadeMinima(dataNascimento, 18))
                {
                    // Exibe uma mensagem de erro se a idade for menor que 18
                    lblErroIdade.Visible = true;
                    lblErroIdade.Text = "Você deve ter pelo menos 18 anos para continuar.";
                    return;
                }

                // Valida o CPF
                if (!CpfValidator.IsValid(cpf))
                {
                    // Exibe uma mensagem de erro se o CPF for inválido
                    lblErroCpf.Visible = true;
                    lblErroCpf.Text = "CPF inválido. Por favor, insira um CPF válido.";
                    return;
                }

                // Redireciona o usuário para a página de resultado se tudo estiver válido
                Response.Redirect($"Result.aspx?nome={nome}&sobrenome={sobrenome}&dataNascimento={dataNascimento}&cpf={cpf}&tipoSeguro={tipoSeguro}");
            }
        }

        // Método que valida a idade mínima
        private bool ValidarIdadeMinima(string dataNascimento, int idadeMinima)
        {
            // Tenta converter a string da data de nascimento para DateTime
            DateTime dataNasc;
            if (DateTime.TryParse(dataNascimento, out dataNasc))
            {
                // Calcula a idade do usuário com base na data atual
                int idade = DateTime.Now.Year - dataNasc.Year;

                // Ajusta a idade caso o aniversário ainda não tenha ocorrido este ano
                if (DateTime.Now.DayOfYear < dataNasc.DayOfYear)
                {
                    idade--;
                }

                return idade >= idadeMinima;
            }
            return false;
        }

        public static class CpfValidator
        {
            public static bool IsValid(string cpf)
            {
                if (string.IsNullOrEmpty(cpf))
                    return false;

                // Remove caracteres não numéricos
                cpf = cpf.Replace(".", "").Replace("-", "");

                if (cpf.Length != 11 || cpf.All(c => c == cpf[0]))
                    return false;

                int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
                int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

                string tempCpf = cpf.Substring(0, 9);
                int soma = 0;

                for (int i = 0; i < 9; i++)
                    soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];

                int resto = soma % 11;
                if (resto < 2)
                    resto = 0;
                else
                    resto = 11 - resto;

                string digito = resto.ToString();
                tempCpf = tempCpf + digito;
                soma = 0;

                for (int i = 0; i < 10; i++)
                    soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];

                resto = soma % 11;
                if (resto < 2)
                    resto = 0;
                else
                    resto = 11 - resto;

                digito = digito + resto.ToString();

                return cpf.EndsWith(digito);
            }
        }
    }
}

