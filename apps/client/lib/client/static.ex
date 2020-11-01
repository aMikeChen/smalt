defmodule Client.Static do
  @behaviour Plug

  def init(_opts) do
    Plug.Static.init(
      at: "/",
      from: :client,
      gzip: false,
      only: ~w(css fonts images js favicon.ico robots.txt)
    )
  end

  def call(conn, options) do
    Plug.Static.call(conn, options)
  end
end
