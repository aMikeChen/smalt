defmodule Smalt.Umbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp deps do
    [
      {:excoveralls, "~> 0.10", only: :test},
      {:ex_machina, "~> 2.4", only: :test},
      {:faker, "~> 0.16", only: :test},
      {:mox, "~> 1.0", only: :test},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      setup: ["cmd mix setup"]
    ]
  end
end
