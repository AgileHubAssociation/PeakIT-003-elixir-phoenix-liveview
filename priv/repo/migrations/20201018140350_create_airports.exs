defmodule RomanianAirports.Repo.Migrations.CreateAirports do
  use Ecto.Migration

  def change do
    create table(:airports) do
      add :name, :string
      add :city, :string
      add :country, :string
      add :iata, :string
      add :icao, :string
      add :latitude, :float
      add :longitude, :float
      add :altitude, :integer
      add :timezone, :float
      add :dst, :string
      add :tz, :string
      add :type, :string
      add :source, :string

      timestamps()
    end

  end
end
