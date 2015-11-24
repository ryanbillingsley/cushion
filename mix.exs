defmodule Cushion.Mixfile do
  use Mix.Project

  def project do
    [app: :cushion,
     description: description,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"}
    ]
  end

  defp description do
    """
    A really simple Buffer API client for sending updates.  Right now it only
    supports sending text updates, but hopefully will support more in the future.
    """
  end

  defp package do
    [
      maintainers: ["Ryan Billingsley"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ryanbillingsley/cushion"}
    ]
  end
end
