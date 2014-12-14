Usuario.delete_all
Usuario.create(:login => 'lucas',
  :senha => '12345',
  :foto => '/images/lucas.jpg',
  :nome => 'Lucas Eduardo Ferreira Costa',
  :cidade => 'Alfenas',
  :estado => 'MG',
  :email => 'lucas@gmail.com',
  :descricao => 
    %{<p>
    	Lucas Eduardo, o herdeiro mais velho da herança dos Ferreira Costa.
      </p>})
# . . .
Usuario.create(:login => 'fabiana',
  :senha => '12345',
  :foto => '/images/fabiana.jpg',
  :nome => 'Fabiana Araújo',
  :cidade => 'Alterosa',
  :estado => 'MG',
  :email => 'fabiana@gmail.com',
  :descricao => 
    %{<p>
    	Sócia majoritária das corporações Friboi, confiança sempre.
      </p>})
# . . .
Usuario.create(:login => 'maik',
  :senha => '12345',
  :foto => '/images/maik.jpg',
  :nome => 'Maik De Souza',
  :cidade => 'Alterosa',
  :estado => 'MG',
  :email => 'maik@gmail.com',
  :descricao => 
    %{<p>
    	Especialista na arte de pegar DP's na faculdade, doutorando em preguiçologia.
      </p>})