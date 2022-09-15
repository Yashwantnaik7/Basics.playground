//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

enum WeatherType {
    case sun, rain, cloud, wind, snow
}

func getWeatherStatus(weather:WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    }
    else {
        return "No heat"
    }
}

let result = getWeatherStatus(weather : WeatherType.rain)
