import SwiftUI

struct ContentView: View {
    @State private var decimalValue: Double = 0.0

    var hexadecimalValue: String {
        var intValue = Int(decimalValue)
        var hexString = ""
        
        while intValue > 0 {
            let remainder = intValue % 16
            let hexDigit = String(remainder, radix: 16)
            hexString = hexDigit + hexString
            intValue /= 16
        }
        
        return hexString.isEmpty ? "0" : hexString.uppercased()
    }

    var body: some View {
        VStack {
            Text("Decimal to Hex Converter")
                .font(.title)

            TextField("Enter a decimal number", value: $decimalValue, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Text("Hexadecimal Result: \(hexadecimalValue)")
                .font(.headline)
                .padding()
        }
    }
}

