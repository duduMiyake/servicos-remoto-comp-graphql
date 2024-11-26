# README

 ● Listar os dados de todos os usuários do serviço - Ok
 ● Listar os dados de todas as músicas mantidas pelo serviço - Ok
 ● Listar os dados de todas as playlists de um determinado usuário
 ● Listar os dados de todas as músicas de uma determinada playlist
 ● Listar os dados de todas as playlists que contêm uma determinada música

ver query_type.rb para as consultas
comandos: 

query {
  usuarios {
    id
    nome
    idade
    playlists {
      id
      nome
    }
  }
}

query {
  musicas {
  	id
    nome
    artista
   	playlists {
   	  id
   	}
  }
}

query{
  playlistsPorUsuario(usuarioId: 1) {
    id
    nome
    usuario {
      id
      nome
    }
  }
}