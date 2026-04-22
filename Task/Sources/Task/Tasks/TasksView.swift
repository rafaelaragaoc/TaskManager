import SwiftUI
//import AppRouter
import AppRouterInterface
import SwiftFlowManager

public struct TasksView: View {
    @ObservedObject var viewModel = TasksViewModel()
//    @EnvironmentObject private var coordinator: AppCoordinator
//    var appRouter: any AppRouterInterface
    
    public var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .navigationTitle("Tarefas")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Add") {
//                    appRouter.route(to: .pomodoro)
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
//                    viewModel.router.route(to: .taskDetail(1))
                } label: {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
        .navigationDestination(for: TasksRoutes.self, destination: { route in
            TaskDetailView()
        })
        .onAppear {
            viewModel.onAppear()
        }
    }
}

public class TasksViewFactory {
    public init() {
        
    }
    
    @MainActor public func build(router: any AppRouterInterface) -> TasksView {
        .init()
    }
}


#Preview {
    //    TasksView( appRouter: <#any AppRouterInterface#>)
}

