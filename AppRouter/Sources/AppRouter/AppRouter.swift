// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import Pomodoro
import Task
import AppRouterInterface
import SwiftFlowManager

// MARK: - Definir Rotas

public enum AppRoute: Routable {
    case task
    case detail(id: String)
    case pomodoro

    @ViewBuilder
    public func destination(container: DependencyContainer) -> some View {
        switch self {
        case .task:
            Text("Tasks")
//            TasksView(viewModel: container.resolve(TasksViewModel.self), appRouter: <#any AppRouterInterface#>)
        case .detail(let id):
//            TaskDetailView(
//                id: id,
//                viewModel: container.resolve(TaskDetailViewModel.self)
//            )
            Text("Detail")
        case .pomodoro:
//            PomodoroView(appRouter: <#any AppRouterInterface#>)
            Text("Pomodoro")
        }
    }
}

// MARK: - Coordinator

public final class AppCoordinator: Coordinator<AppRoute> {
    func showDetail(id: String) {
        navigate(to: .detail(id: id))
    }

    func showPomodoro() {
        present(.pomodoro)
    }
}

public struct AppRouter: AppRouterInterface, View {
    
    @State private var path = [AppRoutes]()
//    @State private var router:  Routable = Router(container: <#T##DependencyContainer#>)
    
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
    
    nonisolated public func route(to route: AppRoutes) {
//        path.append(route)
    }
}
