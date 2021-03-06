defmodule SoundcloudEx.User.Playlist do
  import SoundcloudEx
  alias SoundcloudEx.Playlist

  defstruct [
    :id,
    :created_at,
    :user_id,
    :user,
    :title,
    :permalink,
    :permalink_url,
    :uri,
    :sharing,
    :embeddable_by,
    :purchase_url,
    :artwork_url,
    :description,
    :label,
    :duration,
    :genre,
    :tag_list,
    :label_id,
    :label_name,
    :release,
    :release_day,
    :release_month,
    :release_year,
    :streamable,
    :downloadable,
    :ean,
    :playlist_type
]

  def all(user_id, client) do
    get("/users/#{user_id}/playlists", client)
    |> Poison.decode!(as: [%Playlist{}])
  end
end