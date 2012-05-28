PUC Minas - Pontifícia Universidade Católica de Minas Gerais

Trabalho Interdisciplinar

Nome do sistema: 
	SGRI - Sistema de gerenciamento de Recuros de Infra-Estrutura

Tecnologias Utilizadas:
	- MIcrosoft Visual Studio 2010 Ultimate / Microsoft Visual Web Developer 2010 Express
	- Microsoft SQL Sever 2008 R2
	- SQL Management Studio 2008
	- ASP.NET MVC 2

Solicitação:
	Implementação do caso de uso "Gerenciar Equipamentos e Salas"

Requisitos do sistema:
	- No SQL Management Studio deverá existir um banco de dados (Database) com o nome SGRI_BD
	- No Database, deverá existir duas tabelas:

		- EQUIPAMENTOS.dbo
			- Campos:

				* IDEquipamento (PK - Chave Primária)
				* Codigo_Patrimonio
				* Tipo_Equipamento
				* Descricao_Equipamento
				* Status_Equipamento
		- SALAS.dbo
			- Campos:

				* IDSala (PK - Chave Primária)
				* Descricao_Sala
				* Localizacao_sala
				* Capacidade_Sala
				* Tipo_Sala

		- FUNCIONARIOS.dbo
			- Campos:

				* Matricula_Funcionario
				* Nome_Funcionario
				* Tipo_Funcionario
				* Cargo_Funcionario
				* Login_Funcionario
				* Senha_Funcionario


	
	- Para a conexão do Visual Studio com o SQL Server 2008, foi utilizado uma string de conexão 
	com o nome de "StringConexaoSGRI_BD". 
	- Quanto às pastas do projeto implementado, os arquivos estão separados Models, Views e
	 Controllers.
	- Para executar o projeto no Visual Studio, é só abrir o arquivo SGRIMvc do tipo "Microsoft Visual Studio Solution".
