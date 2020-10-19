defmodule RomanianAirports.Repo do
  use Ecto.Repo,
    otp_app: :romanian_airports,
    adapter: Ecto.Adapters.Postgres
end
