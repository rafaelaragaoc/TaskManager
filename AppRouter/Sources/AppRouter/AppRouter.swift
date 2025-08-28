// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Pomodoro
import Task
import AppRouterInterface

public struct AppRouter: @preconcurrency AppRouterInterface, View {
    
    @State private var path = [AppRoutes]()
    
    public init() {
        
    }
    
    public var body: some View {
        NavigationStack(path: $path) {
            TasksViewFactory().build(router: self)
            .navigationDestination(for: AppRoutes.self, destination: { route in
                
                switch route {
                case .pomodoro:
                    PomodoroViewFactory().build(router: self)
                case .task:
                    TasksViewFactory().build(router: self)
                }
            })
            .transition(
                .asymmetric(
                    insertion: .move(edge: .trailing).combined(with: .opacity),
                    removal: .move(edge: .leading).combined(with: .opacity)
                )
            )
        }
    }
    
    public func route(to route: AppRoutes) {
        path.append(route)
    }
}
