# Modelo Relacional

&nbsp;&nbsp;&nbsp;&nbsp;Um modelo relacional é uma abstração de dados que organiza as informações em tabelas inter-relacionadas, chamadas de relações. Cada tabela consiste em tuplas (também conhecidas como registros ou linhas), e cada tupla é composta por atributos (também conhecidos como campos ou colunas). Esses modelos são amplamente utilizados em sistemas de gerenciamento de bancos de dados relacionais (RDBMS), nos quais a integridade e a consistência dos dados são fundamentais.

&nbsp;&nbsp;&nbsp;&nbsp;Para o projeto de desenvolvimento web do instituto de psicologia animal, que requer um site funcionando como um formulário dinâmico para coletar informações de voluntários sobre o abandono de cães, o modelo relacional pode ser aplicado da seguinte forma:


&nbsp;&nbsp;&nbsp;&nbsp;<b>Users (Usuários) </b>: Armazenaria informações sobre os voluntários, como ID do usuário, nome, e-mail, idade, sexo, nível educacional, entre outros dados pessoais.

&nbsp;&nbsp;&nbsp;&nbsp; <b>Resenha:</b> Esta tabela registraria as respostas dos usuários, incluindo o ID da resenha, o ID do usuário (chave estrangeira referenciando a tabela Users), data e hora da submissão, entre outros detalhes relevantes.

&nbsp;&nbsp;&nbsp;&nbsp; <b>Relacionamento Users/Resenha: </b> Esta relação conecta os usuários às suas resenhas. Cada usuário cadastrado preenche informações individuais que são armazenadas na tabela Resenha, como parte de um relacionamento um-para-um.

&nbsp;&nbsp;&nbsp;&nbsp; <b>Relacionamento Users/Formulários:</b> Existem quatro tipos de formulários para diferentes categorias de usuários: aqueles que têm cães, tiveram cães, querem ter cães e não querem ter cães. Cada usuário pode preencher um ou mais desses formulários, gerando um relacionamento um-para-muitos entre os usuários e os formulários correspondentes.

&nbsp;&nbsp;&nbsp;&nbsp; <b>Tabela de Opções de Resposta:</b> Essa é uma tabela que se refere a uma pergunta no formulário que permite múltiplas respostas. Pra armazenar essas respostas, foi criada uma tabela que contém todas as opções de resposta, juntamente com um valor booleano (no caso, um valor binário, pois não foi econtrada a opção Boolean no SQL Designer) para indicar se a opção foi selecionada ou não.

&nbsp;&nbsp;&nbsp;&nbsp; Cada formulário pode conter múltiplas opções de resposta, portanto, há um relacionamento muitos-para-muitos entre os formulários e as opções de resposta. Isso é modelado através de uma tabela de junção, que registra quais opções foram selecionadas em cada formulário.
Ao implementar esse modelo no banco de dados, cada tabela seria representada por um conjunto de colunas correspondentes aos atributos e cada linha representaria uma instância (fazendo uma comparação com OOP) dos dados. Os relacionamentos entre as tabelas são estabelecidos através de chaves estrangeiras, garantindo que referenciemos as tabelas corretas.

A seguir, está o Modelo Relacional:
