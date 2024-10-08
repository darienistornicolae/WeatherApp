import Foundation

struct WeatherModel: Codable {
  var location: Location
  var current: Current

  static func empty() -> WeatherModel {
    WeatherModel(location: Location(name: ""), current: Current(temp_c: 0, wind_kph: 0))
  }
}

struct Location: Codable {
  var name: String
}

struct Current: Codable {
  var temp_c: Double
  var wind_kph: Double
}
