import SwiftUI

public struct TaskDetailView: View {
    @StateObject var viewModel = TaskDetailViewModel()

    public var body: some View {
        VStack {
            Text(viewModel.title)
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}
