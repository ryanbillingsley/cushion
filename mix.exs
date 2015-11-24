defmodule Cushion.Mixfile do
  use Mix.Project

  def project do
    [app: :cushion,
     name: "cushion",
     source_url: "https://www.github.com/ryanbillingsley/cushion",
     description: description,
     version: "0.0.3",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     docs: docs,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"},
      {:ex_doc, "~> 0.11", only: :dev}
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

  defp docs do
     [
       extras: ["README.md"]
     ]
  end
end
