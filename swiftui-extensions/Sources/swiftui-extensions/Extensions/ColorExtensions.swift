//
//  Color + Extensions.swift
//  swiftui-extensions
//
//  Created by Andrey Barsukov on 01.06.2025.
//

import SwiftUI

// MARK: - Color + Extensions

public extension Color {
    
    /// Initializes a `Color` instance from a hexadecimal string.
    ///
    /// The hex string may optionally begin with a "#" character and must consist
    /// of exactly 6 hexadecimal digits (e.g., "#RRGGBB" or "RRGGBB").
    ///
    /// If the string is invalid or cannot be parsed, the initializer defaults
    /// to a gray color as a fallback.
    ///
    /// - Parameter hex: A hexadecimal color string representation.
    init(hex: String) {
        var hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if hex.hasPrefix("#") {
            hex.remove(at: hex.startIndex)
        }

        guard hex.count == 6,
              let rgbValue = UInt64(hex, radix: 16) else {
            self = .gray // fallback
            return
        }

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
