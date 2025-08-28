import SwiftUI

struct ___VARIABLE_sceneName___View: View {
    @StateObject var viewModel = ___VARIABLE_sceneName___ViewModel()

    var body: some View {
        VStack {
            Text(viewModel.title)
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}
