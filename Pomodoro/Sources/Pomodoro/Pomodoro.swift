// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI
import AppRouterInterface

public struct PomodoroView: View {
    //    @ObservedObject var viewModel = TasksViewModel()
    var appRouter: any AppRouterInterface
    
    public var body: some View {
        VStack {
            Text("Pmodoro!")
        }
        .navigationTitle("Pmodoro")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Add") {
                    appRouter.route(to: .task)
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
            
        }
    }
}

public class PomodoroViewFactory {
    public init() {
        
    }
    
    @MainActor public func build(router: any AppRouterInterface) -> PomodoroView {
        .init(appRouter: router)
    }
}

#Preview {
//    PomodoroView(appRouter: <#any AppRouterInterface#>)
}
