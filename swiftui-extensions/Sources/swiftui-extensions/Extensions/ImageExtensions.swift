//
//  Image + Extensions.swift
//  swiftui-extensions
//
//  Created by Andrey Barsukov on 01.06.2025.
//

import SwiftUI

// MARK: - Image + Extensions

public extension Image {
    
    /// Creates a system symbol image.
    ///
    /// - Parameter name: The name of the system symbol image.
    /// - Returns: An `Image` view that displays a system-provided image.
    ///
    /// Example:
    /// ```swift
    /// Image.system("heart.fill")  // Creates a heart icon
    /// Image.system("gear")       // Creates a gear/settings icon
    /// ```
    ///
    /// - Note: Requires iOS 13.0/macOS 11.0 or later. The image names must match
    ///         Apple's [SF Symbols](https://developer.apple.com/sf-symbols/) catalog.
    static func system(_ name: String) -> Image {
        Image(systemName: name)
    }
}
