using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ev3Solucoes
{
    public partial class ListEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            listaEventos.DataSource = Dados.Evento.Exibir();//Chama o método exibir da classe "Evento.cs" na pasta Dados
            listaEventos.DataBind(); //Faz o Bind dos dados, enviando para a tabela.
        }
    }
}