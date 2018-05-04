using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ev3Solucoes
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            buttonCad.Click += ButtonCad_Click;
        }

        private void ButtonCad_Click(object sender, EventArgs e)
        {
            var NovoEvento = new Models.Evento(); //Cria uma entidade Evento
            NovoEvento.nomeEvento = name.Text; //Define o atributo nome do evento
            DateTime dateEvento = DateTime.Parse(date.Text); //Converte a data de text para DateTime
            NovoEvento.dataEvento = dateEvento;//Define o atributo data do evento
            NovoEvento.localEvento = place.Text;//Define o atributo local do evento

            bool cadastrado = Dados.Evento.Cadastrar(NovoEvento); //Chama o Método Cadastrar do arquivo "Evento.cs" na pasta Dados
            if (cadastrado)//Se o cadastro for bem sucedido aparece a mensagem
            {
                mensagem.Text = "Evento: "+ NovoEvento.nomeEvento +" cadastrado com sucesso!";
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}