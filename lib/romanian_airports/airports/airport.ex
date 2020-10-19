defmodule RomanianAirports.Airports.Airport do
  use Ecto.Schema
  import Ecto.Changeset

  schema "airports" do
    field :altitude, :integer
    field :city, :string
    field :country, :string
    field :dst, :string
    field :iata, :string
    field :icao, :string
    field :latitude, :float
    field :longitude, :float
    field :name, :string
    field :source, :string
    field :timezone, :float
    field :type, :string
    field :tz, :string

    timestamps()
  end

  @doc false
  def changeset(airport, attrs) do
    airport
    |> cast(attrs, [:name, :city, :country, :iata, :icao, :latitude, :longitude, :altitude, :timezone, :dst, :tz, :type, :source])
    |> validate_required([:name, :city, :country, :iata, :icao, :latitude, :longitude, :altitude, :timezone, :dst, :tz, :type, :source])
  end
end
