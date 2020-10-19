defmodule RomanianAirportsWeb.AirportsLive do
  use RomanianAirportsWeb, :live_view

  alias RomanianAirports.Airports

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        iata: "",
        airports: Airports.list_airports()
      )
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1>Find an airport</h1>
    <form phx-submit="search-code">
      <input type="text" name="iata" value="<%= @iata %>"
        placeholder="IATA Code"
        autofocus autocomplete="off" />
      <button type="submit">
        Search
      </button>
    </form>

    <%= for airport <- @airports do %>
    <div>
      <%= airport.name %>
    </div>
    <% end %>
    """
  end

  def handle_event("search-code", %{"iata" => code}, socket) do
    airports =
      Airports.list_airports()
      |> Enum.filter(fn x -> x.iata == code end)
    socket =
      assign(socket,
        airports: airports
      )
    {:noreply, socket}
  end
end
