// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public enum AppRoutes {
    case pomodoro
    case task
}

public protocol AppRouterInterface {
    
    func route(to route: AppRoutes)
}
