# cushion

A really simple Buffer API client in Elixir

## Installation

  1. Add cushion and ibrowse to your list of dependencies in `mix.exs`:

        def deps do
          [{:cushion, "~> 0.0.1"},{:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"}]
        end

     > ibrowse is not on hex, so you have to add it yourself

  2. cushion uses HTTPotion so you need to add ibrowse to your application:

        def application do
          [applications: [:ibrowse]]
        end

## Usage

cushion is two parts: a `Cushion.Update` struct and `Cushion.post_update/1`

### Cushion.Update

`Cushion.Update` contains all the information that you need to construct an update.

```
iex> %Cushion.Update{text: "The update text", profiles: ["1234"]}
%Cushion.Update{attachment: false, profiles: ["1234"], shorten: true, text: "Update Text"}
```

You can get more infomration about the parameters from the docs.

### Cushion.post_update/1

Once you have an update struct, you can simple post it using `Custion.post_update/1`:

```
iex> Cushion.post_update(%Cushion.Update{text: "Some text", profiles: ["1234"]})
%HTTPotion.Response{...}
```

Right now the response is the raw HTTPostion response.  In the future, this will get parsed.

## Contributing

Feel free to submit issues or pull requests but know this was more an expirement
and I will not have a lot of time to work on it.
