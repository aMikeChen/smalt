defmodule Smalt.Repo do
  use Ecto.Repo,
    otp_app: :smalt,
    adapter: Ecto.Adapters.Postgres
end
