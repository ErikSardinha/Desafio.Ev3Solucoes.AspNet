<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListEventos.aspx.cs" Inherits="Ev3Solucoes.ListEventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="stylebase.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Desafio: Ev3 Soluções </title>
    <style>
        a:any-link {
            color: orange;
            text-decoration: none;
        }           
        .container {
            margin: auto;
            padding: 5pt;
            font-size: 14pt;
        }
        .container h1{
            margin: 0 auto;
            text-align: center;
            color: orangered;
            font-size: 24pt;
        }
        .container table{
            margin: auto;
            width: 90%;
            padding:0;
        }
            .container table td, .container table th {
                margin:0;
                padding:0;
                width:31%;
                border: 2px solid black;
                text-align: center;
            }
        .dev {
            float: right;
            color: goldenrod;
        }
    </style>
</head>
<body>
    <header>
        <h1> Desafio: </h1>
        <h3> Controle de Eventos </h3>
    </header>
    <nav>
        <figure>
            <img src="Imagens\Ev3-logo.png" />
        </figure>
        <ul class="menu">
            <li><a href="Index.html">Inicio</a></li>
            <li><a href="Cadastro.aspx">Cadastro</a></li>
            <li><a href="#">Consulta</a></li>
        </ul>
    </nav>
    <section>
        <article>
            <form id="form1" runat="server">
                <div class="container">
                    <h1> Lista de evento </h1>
                    <table>
                        <tr>
                            <th>Nome</th>
                            <th>Data</th>
                            <th>Local</th>
                        </tr>
                        <asp:DataList runat="server" ID="listaEventos">
                            <ItemTemplate>
                                <tr>
                                    <td> <%# DataBinder.Eval(Container.DataItem, "nomeEvento")%> </td>
                                    <td> <%# DataBinder.Eval(Container.DataItem, "dataEvento")%> </td>
                                    <td> <%# DataBinder.Eval(Container.DataItem, "localEvento")%> </td>
                                </tr>
                            </ItemTemplate>
                        </asp:DataList>
                    </table>
                </div>
            </form>
        </article>
    </section>
    <footer>
        <p> Site resposta ao desafio da Ev3 Soluções </p>
        <p class="dev"> Desenvolvido por: Erik Santos Sardinha</p>
    </footer>
</body>
</html>
