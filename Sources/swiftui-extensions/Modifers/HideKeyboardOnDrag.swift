//
//  HideKeyboardOnDrag.swift
//  swiftui-extensions
//
//  Created by Andrey Barsukov on 01.06.2025.
//

import SwiftUI

// MARK: - HideKeyboardOnDrag

/// A view modifier that hides the keyboard when a drag gesture is detected.
///
/// This modifier listens for drag gestures on the view it's applied to.
/// If a downward drag (height translation greater than 0) is detected,
/// it dismisses the keyboard. It can be useful for enhancing user experience
/// by allowing users to dismiss the keyboard with a simple drag gesture.
public struct HideKeyboardOnDrag: ViewModifier {
    
    // MARK: - Properties
    
    private let application: UIApplication = .shared
    
    // MARK: - ViewModifier
    
    /// The body of the view modifier.
    /// - Parameter content: The content of the view to which the modifier is applied.
    /// - Returns: A modified view that responds to drag gestures.
    public func body(content: Content) -> some View {
        content
            .gesture(
                DragGesture().onEnded { value in
                    // Dismiss the keyboard if a downward drag is detected.
                    if value.translation.height > 0 {
                        application.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                }
            )
    }
}
