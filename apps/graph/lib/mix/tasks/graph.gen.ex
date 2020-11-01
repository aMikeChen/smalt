defmodule Mix.Tasks.Graph.Gen do
  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    Mix.Tasks.Absinthe.Schema.Sdl.run(["--schema", "Graph.Schema", "ui/schema.graphql"])
  end
end
