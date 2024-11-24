module Mutations
  class AdicionarMusicaAPlaylist < BaseMutation
    argument :playlist_id, ID, required: true
    argument :musica_id, ID, required: true

    type Types::PlaylistType

    def resolve(playlist_id:, musica_id:)
      playlist = Playlist.find(playlist_id)
      musica = Musica.find(musica_id)
      playlist.musicas << musica
      playlist
    end
  end
end
