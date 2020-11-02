defmodule Graph.MixProject do
  use Mix.Project

  def project do
    [
      app: :graph,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:smalt, in_umbrella: true},
      {:absinthe, "~> 1.5"},
      {:absinthe_relay, "~> 1.5"},
      {:dataloader, "~> 1.0"},
      {:absinthe_error_payload, "~> 1.1"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
