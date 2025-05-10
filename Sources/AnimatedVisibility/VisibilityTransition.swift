//
//  VisibilityTransition.swift
//  AnimatedVisibility
//
//  Created by Andy Kale on 2025-05-09.
//

import SwiftUI

public enum VisibilityTransition {
    case fade
    case scale
    case slide
    case fadeAndScale
    case slideAndFade
    case moveFromTop
    case moveFromBottom

    public var transition: AnyTransition {
        switch self {
        case .fade: return .opacity
        case .scale: return .scale
        case .slide: return .slide
        case .fadeAndScale: return .opacity.combined(with: .scale)
        case .slideAndFade: return .slide.combined(with: .opacity)
        case .moveFromTop: return .move(edge: .top)
        case .moveFromBottom: return .move(edge: .bottom)
        }
    }
}
