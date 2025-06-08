//
//  View + Extensions.swift
//  swiftui-extensions
//
//  Created by Andrey Barsukov on 01.06.2025.
//

import SwiftUI

// MARK: - View + Extensions

extension View {
    
    /// Conditionally shows or hides the view while maintaining layout space.
    ///
    /// This modifier changes the view's opacity while keeping its frame, making it
    /// more suitable for layout-preserving visibility changes than `if` conditionals.
    ///
    /// - Parameter condition: A Boolean value that determines whether the view is visible.
    /// - Returns: The modified view with applied opacity based on the condition.
    ///
    /// Example:
    /// ```swift
    /// Text("Hello")
    ///     .visible(if: shouldShowGreeting)
    /// ```
    ///
    /// - Note: Unlike `if` conditionals, this preserves the view's layout space when hidden.
    /// - Important: The view remains in the view hierarchy, just invisible.
    public func visible(`if` condition: Bool) -> some View {
        opacity(condition ? 1 : 0)
    }
    
    /// Positions this view within an invisible frame with the specified size.
    /// - Parameter size: A fixed `width` and `height` for the resulting view
    /// - Returns: A view with fixed dimensions of `widht` and `height`
    public func frame(size: CGSize) -> some View {
        self.frame(width: size.width, height: size.height)
    }
    
    /// Positions this view within an invisible frame with the specified size.
    public func frame(size: CGFloat) -> some View {
        self.frame(width: size, height: size)
    }
    
    /// Remove keyboard suggestions
    public func removePredictiveSuggestions() -> some View {
        self.keyboardType(.alphabet)
            .disableAutocorrection(true)
    }
    
    /// Hides the keyboard for the currently active text input.
    public func hideKeyboardOnDrag() -> some View {
        self.modifier(HideKeyboardOnDrag())
    }
}
