//
//  View+AnimatedVisibility.swift
//  AnimatedVisibility
//
//  Created by Andy Kale on 2025-05-09.
//

import Foundation
import SwiftUI

public extension View {
    func animatedVisibility(
        _ isVisible: Bool,
        animation: Animation = .easeInOut(duration: 0.3),
        transitionStyle: VisibilityTransition = .fade
    ) -> some View {
        self.modifier(
            AnimatedVisibilityModifier(
                isVisible: isVisible,
                animation: animation,
                transition: transitionStyle.transition
            )
        )
    }
}
