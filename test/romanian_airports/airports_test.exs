defmodule RomanianAirports.AirportsTest do
  use RomanianAirports.DataCase

  alias RomanianAirports.Airports

  describe "airports" do
    alias RomanianAirports.Airports.Airport

    @valid_attrs %{altitude: 42, city: "some city", country: "some country", dst: "some dst", iata: "some iata", icao: "some icao", latitude: 120.5, longitude: 120.5, name: "some name", source: "some source", timezone: 120.5, type: "some type", tz: "some tz"}
    @update_attrs %{altitude: 43, city: "some updated city", country: "some updated country", dst: "some updated dst", iata: "some updated iata", icao: "some updated icao", latitude: 456.7, longitude: 456.7, name: "some updated name", source: "some updated source", timezone: 456.7, type: "some updated type", tz: "some updated tz"}
    @invalid_attrs %{altitude: nil, city: nil, country: nil, dst: nil, iata: nil, icao: nil, latitude: nil, longitude: nil, name: nil, source: nil, timezone: nil, type: nil, tz: nil}

    def airport_fixture(attrs \\ %{}) do
      {:ok, airport} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Airports.create_airport()

      airport
    end

    test "list_airports/0 returns all airports" do
      airport = airport_fixture()
      assert Airports.list_airports() == [airport]
    end

    test "get_airport!/1 returns the airport with given id" do
      airport = airport_fixture()
      assert Airports.get_airport!(airport.id) == airport
    end

    test "create_airport/1 with valid data creates a airport" do
      assert {:ok, %Airport{} = airport} = Airports.create_airport(@valid_attrs)
      assert airport.altitude == 42
      assert airport.city == "some city"
      assert airport.country == "some country"
      assert airport.dst == "some dst"
      assert airport.iata == "some iata"
      assert airport.icao == "some icao"
      assert airport.latitude == 120.5
      assert airport.longitude == 120.5
      assert airport.name == "some name"
      assert airport.source == "some source"
      assert airport.timezone == 120.5
      assert airport.type == "some type"
      assert airport.tz == "some tz"
    end

    test "create_airport/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Airports.create_airport(@invalid_attrs)
    end

    test "update_airport/2 with valid data updates the airport" do
      airport = airport_fixture()
      assert {:ok, %Airport{} = airport} = Airports.update_airport(airport, @update_attrs)
      assert airport.altitude == 43
      assert airport.city == "some updated city"
      assert airport.country == "some updated country"
      assert airport.dst == "some updated dst"
      assert airport.iata == "some updated iata"
      assert airport.icao == "some updated icao"
      assert airport.latitude == 456.7
      assert airport.longitude == 456.7
      assert airport.name == "some updated name"
      assert airport.source == "some updated source"
      assert airport.timezone == 456.7
      assert airport.type == "some updated type"
      assert airport.tz == "some updated tz"
    end

    test "update_airport/2 with invalid data returns error changeset" do
      airport = airport_fixture()
      assert {:error, %Ecto.Changeset{}} = Airports.update_airport(airport, @invalid_attrs)
      assert airport == Airports.get_airport!(airport.id)
    end

    test "delete_airport/1 deletes the airport" do
      airport = airport_fixture()
      assert {:ok, %Airport{}} = Airports.delete_airport(airport)
      assert_raise Ecto.NoResultsError, fn -> Airports.get_airport!(airport.id) end
    end

    test "change_airport/1 returns a airport changeset" do
      airport = airport_fixture()
      assert %Ecto.Changeset{} = Airports.change_airport(airport)
    end
  end
end
