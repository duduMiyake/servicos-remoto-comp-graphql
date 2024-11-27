class CreateJoinTableMusicasPlaylists < ActiveRecord::Migration[8.0]
  def change
    create_join_table :musicas, :playlists do |t|
      # t.index [:musica_id, :playlist_id]
      # t.index [:playlist_id, :musica_id]
    end
  end
end
