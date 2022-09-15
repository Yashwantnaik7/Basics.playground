extension Double {
    func convertCelsiusToFahrenheit() -> Double{
        return ((self * 1.8) + 32).rounded()
    }
    func convertFahrenheitToCelsius() -> Double {
        return ((self - 32) / 1.8).rounded()
    }
}

var celsiusValue:Double = 23
var fahrenheitValue:Double = 74

print(celsiusValue.convertCelsiusToFahrenheit())
print(fahrenheitValue.convertFahrenheitToCelsius())
