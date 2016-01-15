<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails </title>

		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.50em 0;

			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}

            li{
                padding: 2px;
                margin-left: 5px;
            }
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>ES.: RIO DE JANEIRO<br/></h1>
			<ul>
				<li><br/>Angra dos Reis<br/>
                Aperibé<br/>
                Araruama<br/>
                Areal<br/>
                Armação dos Búzios<br/>
                Arraial do Cabo<br/>
                Barra do Piraí<br/>
                Barra Mansa<br/>
                Belford Roxo<br/>
                Bom Jardim<br/>
                Bom Jesus do Itabapoana<br/>
                Cabo Frio<br/>
                Cachoeiras de Macacu<br/>
                Cambuci<br/>
                Campos dos Goytacazes<br/>
                Cantagalo<br/>
                Carapebus<br/>
                Cardoso Moreira<br/>
                Carmo<br/>
                Casimiro de Abreu<br/>
                Comendador Levy Gasparian<br/>
                Conceição de Macabu<br/>
                Cordeiro<br/>
                Duas Barras<br/>
                Duque de Caxias<br/>
                Engenheiro Paulo de Frontin<br/>
                Guapimirim<br/>
                Iguaba Grande<br/>
                Itaboraí<br/>
                Itaguaí<br/>
                Italva<br/>
                Itaocara<br/>
                Itaperuna<br/>
                Itatiaia<br/>
                Japeri<br/>
                Laje do Muriaé<br/>
                Macaé<br/>
                Macuco<br/>
                Magé<br/>
                Mangaratiba<br/>
                Maricá<br/>
                Mendes<br/>
                Mesquita<br/>
                Miguel Pereira<br/>
                Miracema<br/>
                Natividade<br/>
                Nilópolis<br/>
                Niterói<br/>
                Nova Friburgo<br/>
                Nova Iguaçu<br/>
                Paracambi<br/>
                Paraíba do Sul<br/>
                Paraty<br/>
                Paty do Alferes<br/>
                Petrópolis<br/>
                Pinheiral<br/>
                Piraí<br/>
                Porciúncula<br/>
                Porto Real<br/>
                Quatis<br/>
                Queimados<br/>
                Quissamã<br/>
                Resende<br/>
                Rio Bonito<br/>
                Rio Claro<br/>
                Rio das Flores<br/>
                Rio das Ostras<br/>
                Rio de Janeiro<br/>
                Santa Maria Madalena<br/>
                Santo Antônio de Pádua<br/>
                São Fidélis<br/>
                São Francisco de Itabapoana<br/>
                São Gonçalo<br/>
                São João da Barra<br/>
                São João de Meriti<br/>
                Sao José de Ubá<br/>
                São José do Vale do Rio Preto<br/>
                São Pedro da Aldeia<br/>
                São Sebastião do Alto<br/>
                Sapucaia<br/>
                Saquarema<br/>
                Seropédica<br/>
                Silva Jardim<br/>
                Sumidouro<br/>
                Tanguá<br/>
                Teresópolis<br/>
                Trajano de Morais<br/>
                Três Rios<br/>
                Valença<br/>
                Varre-Sai<br/>
                Vassouras<br/>
                Volta Redonda</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<li>
                    <p>None</p>
				</li>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>&nbsp;Bem Vindo ao CarStolen &nbsp;(${session.policial?.nomeCompleto})<!-- //Mostra o nome do usuario -->
            &nbsp;<g:link controller="policial" action="paginaLogin">Sair!</g:link> <!-- //botao de logoff --></h1>
			<p><br/>Você pode fazer a consulta de veículos roubados de RJ e assim evitar de ter que devolver o
            seu carro e ainda perder todo o seu investimento.
            É importante que vários pontos sejam considerados quando você compra um carro usado, se for em
            revendas de carros, peça para que o vendedor mostre-lhe a lista de multas e mostre que o carro
            não foi roubado ou sinistrado.<br/><br/></p>

            <p> Para acessar a buscas de chassi de Carro siga os botões : ( Carro > default.busca.label )</p>

            <li>Mapeamento One-to-many de Carro/Dono</li>
            <li>Possui Login</li>
            <li>Filtro no login</li>
            <li>Busca de Chassi de carros</li>
            <li>Está no Git Hub com o Nome de <a href="https://github.com/CaDu0102/CarStolen1" target="_blank">CarStolen1</a></li>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:<br/></h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">

                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>

					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
