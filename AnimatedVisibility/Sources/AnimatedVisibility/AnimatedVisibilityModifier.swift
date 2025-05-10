//
//  VisibilityTransition.swift
//  AnimatedVisibility
//
//  Created by Andy Kale on 2025-05-09.
//

import SwiftUI

public struct AnimatedVisibilityModifier: ViewModifier {
    let isVisible: Bool
    let animation: Animation
    let transition: AnyTransition

    public func body(content: Content) -> some View {
        Group {
            if isVisible {
                content.transition(transition)
            }
        }
        .animation(animation, value: isVisible)
    }
}
