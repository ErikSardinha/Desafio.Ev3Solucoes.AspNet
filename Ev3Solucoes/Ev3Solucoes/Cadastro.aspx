<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Ev3Solucoes.Cadastro" %>

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
        .campo {
            padding: 10pt;
            color: orange;
        }
            .campo input{
                float: right;
                width: 80%;
                text-align:center;
            }
                .campo input[type="submit"] {
                    margin: auto;
                    padding: 5pt;
                    width: auto;
                    color: slategrey;
                    background-color: orange;
                    border: solid 2px darkorange;
                    float: right;
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
            <li><a href="#">Cadastro</a></li>
            <li><a href="ListEventos.aspx">Consulta</a></li>
        </ul>
    </nav>
    <section>
        <article>
            <form id="form1" runat="server">
                <div class="container">
                    <h1> Cadastro do evento </h1>
                    <div class="campo">
                        <asp:label runat="server" AssociatedControlID="name"> Nome: </asp:label>
                        <asp:TextBox runat="server" ID="name"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:label runat="server" AssociatedControlID="date"> Data: </asp:label>
                        <asp:TextBox runat="server" TextMode="date" ID="date"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:label runat="server" AssociatedControlID="place"> Local: </asp:label>
                        <asp:TextBox runat="server" ID="place"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:Button ID="buttonCad" runat="server" Text="Cadastrar" />
                    </div>
                    <p><asp:Literal runat="server" ID="mensagem"></asp:Literal></p>
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
