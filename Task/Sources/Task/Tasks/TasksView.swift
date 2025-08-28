import SwiftUI
import AppRouterInterface

public struct TasksView: View {
    @ObservedObject var viewModel = TasksViewModel()
    var appRouter: any AppRouterInterface
    
    public var body: some View {
            VStack {
                Text("Hello, World!")
            }
            .navigationTitle("Tarefas")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        appRouter.route(to: .pomodoro)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Action for the Settings button
                    } label: {
                        Image(systemName: "gearshape.fill")
                    }
                }
            }
        .onAppear {
            viewModel.onAppear()
        }
    }
}

public class TasksViewFactory {
    public init() {
        
    }
    
    @MainActor public func build(router: any AppRouterInterface) -> TasksView {
        .init(appRouter: router)
    }
}


#Preview {
//    TasksView( appRouter: <#any AppRouterInterface#>)
}

