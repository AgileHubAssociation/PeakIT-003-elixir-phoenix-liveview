# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     RomanianAirports.Repo.insert!(%RomanianAirports.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias RomanianAirports.Airports.Airport
alias RomanianAirports.Repo

%Airport{
  name: "Arad International Airport",
  city: "Arad",
  country: "Romania",
  iata: "ARW",
  icao: "LRAR",
  latitude: 46.17660140991211,
  longitude: 21.261999130249023,
  altitude: 352,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Bacău Airport",
  city: "Bacau",
  country: "Romania",
  iata: "BCM",
  icao: "LRBC",
  latitude: 46.52190017700195,
  longitude: 26.91029930114746,
  altitude: 607,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Tautii Magheraus Airport",
  city: "Baia Mare",
  country: "Romania",
  iata: "BAY",
  icao: "LRBM",
  latitude: 47.65840148925781,
  longitude: 23.469999313354492,
  altitude: 605,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Băneasa International Airport",
  city: "Bucharest",
  country: "Romania",
  iata: "BBU",
  icao: "LRBS",
  latitude: 44.50320053100586,
  longitude: 26.102100372314453,
  altitude: 297,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Mihail Kogălniceanu International Airport",
  city: "Constanta",
  country: "Romania",
  iata: "CND",
  icao: "LRCK",
  latitude: 44.36220169067383,
  longitude: 28.488300323486328,
  altitude: 353,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Cluj-Napoca International Airport",
  city: "Cluj-Napoca",
  country: "Romania",
  iata: "CLJ",
  icao: "LRCL",
  latitude: 46.78519821166992,
  longitude: 23.686199188232422,
  altitude: 1036,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Caransebeş Airport",
  city: "Caransebes",
  country: "Romania",
  iata: "CSB",
  icao: "LRCS",
  latitude: 45.41999816894531,
  longitude: 22.253299713134766,
  altitude: 866,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Craiova Airport",
  city: "Craiova",
  country: "Romania",
  iata: "CRA",
  icao: "LRCV",
  latitude: 44.31809997558594,
  longitude: 23.888599395751953,
  altitude: 626,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Iaşi Airport",
  city: "Iasi",
  country: "Romania",
  iata: "IAS",
  icao: "LRIA",
  latitude: 47.17850112915039,
  longitude: 27.6205997467041,
  altitude: 397,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Oradea International Airport",
  city: "Oradea",
  country: "Romania",
  iata: "OMR",
  icao: "LROD",
  latitude: 47.025299072265625,
  longitude: 21.90250015258789,
  altitude: 465,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Henri Coandă International Airport",
  city: "Bucharest",
  country: "Romania",
  iata: "OTP",
  icao: "LROP",
  latitude: 44.5711111,
  longitude: 26.085,
  altitude: 314,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Sibiu International Airport",
  city: "Sibiu",
  country: "Romania",
  iata: "SBZ",
  icao: "LRSB",
  latitude: 45.78559875488281,
  longitude: 24.091299057006836,
  altitude: 1496,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Satu Mare Airport",
  city: "Satu Mare",
  country: "Romania",
  iata: "SUJ",
  icao: "LRSM",
  latitude: 47.70330047607422,
  longitude: 22.885700225830078,
  altitude: 405,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Suceava Stefan cel Mare Airport",
  city: "Suceava",
  country: "Romania",
  iata: "SCV",
  icao: "LRSV",
  latitude: 47.6875,
  longitude: 26.35409927368164,
  altitude: 1375,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Tulcea Airport",
  city: "Tulcea",
  country: "Romania",
  iata: "TCE",
  icao: "LRTC",
  latitude: 45.0625,
  longitude: 28.71430015563965,
  altitude: 200,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Transilvania Târgu Mureş International Airport",
  city: "Tirgu Mures",
  country: "Romania",
  iata: "TGM",
  icao: "LRTM",
  latitude: 46.46770095825195,
  longitude: 24.412500381469727,
  altitude: 963,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()

%Airport{
  name: "Timişoara Traian Vuia Airport",
  city: "Timisoara",
  country: "Romania",
  iata: "TSR",
  icao: "LRTR",
  latitude: 45.809898376464844,
  longitude: 21.337900161743164,
  altitude: 348,
  timezone: 2.0,
  dst: "E",
  tz: "Europe/Bucharest",
  type: "airport",
  source: "OurAirports"
}
|> Repo.insert!()
