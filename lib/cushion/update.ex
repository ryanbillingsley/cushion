defmodule Cushion.Update do
  @moduledoc """
  Struct for creating an update.

  * :text _binary_, The text of the update, required
  * :profiles _[""]_, List of binaries that represent Buffer profile IDs, required
  * :attachment _boolean_, Determines whether to treat links in `text` as attachments, optional, default: false
  * :shorten _boolean_, Determines whether to use the url shortener on any link, optional, default: true

  ## Example
      iex> %Cushion.Update{text: "The update text", profiles: ["1234"]}
      %Cushion.Update{attachment: false, profiles: ["1234"], shorten: true, text: "Update Text"}
  """
  defstruct text: "", attachment: false, profiles: [], shorten: true
end
