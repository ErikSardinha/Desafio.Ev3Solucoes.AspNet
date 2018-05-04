using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ev3Solucoes.Dados
{
    public class Evento
    {
        public static bool Cadastrar(Models.Evento evento)
        {
            try
            {
                using (var conexao = new Models.BancoDeDadosEv3Entities())//Cria uma conexao com o Banco momentanea, até a pagina ser fechada
                {
                    conexao.Evento.Add(evento);// Adiciona um evento ao banco de dados
                    conexao.SaveChanges();// Salva as alterações;
                    return true;
                }
            }
            catch (Exception Erro)
            {
                return false;
            }
        }
        public static IEnumerable<Models.Evento> Exibir(){
            try
            {
                using (var conexao = new Models.BancoDeDadosEv3Entities())//Conexão com o BD momentanea
                {
                    return conexao.Evento.ToList();//Retorna em formato de lista os elementos de Evento;
                }
            }
            catch {
                return new List<Models.Evento>();
            }

        }
    }
}