defmodule Cushion do
  @doc """
  Posts an update to Buffer using the `Cushion.Update` struct.

  Returns the response struct from the api call.

  Examples
      iex> Cushion.post_update(%Cushion.Update{text: "Some text", profiles: ["1234"]})
      %HTTPotion.Response{...}
  """
  def post_update(%Cushion.Update{} = update) do
    access_token = Application.get_env(:cushion, :buffer_access_token)
    url = URI.encode "https://api.bufferapp.com/1/updates/create.json?access_token=#{access_token}"

    profile_ids = update.profiles
                  |> Enum.reduce "", fn(profile, acc) -> acc <> "&profile_ids[]=#{profile}" end

    body = "text=#{update.text}#{profile_ids}&attachment=true&shorten=#{update.shorten}"

    response = HTTPotion.post url, [body: body, headers: ["Content-Type": "application/x-www-form-urlencoded", "Accept": "application/json"]]

    IO.inspect response
  end
end
