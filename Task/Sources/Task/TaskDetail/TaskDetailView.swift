import SwiftUI

struct TaskDetailView: View {
    @StateObject var viewModel = TaskDetailViewModel()

    var body: some View {
        VStack {
            Text(viewModel.title)
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}
