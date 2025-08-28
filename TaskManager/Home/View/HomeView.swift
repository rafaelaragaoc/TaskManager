import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
        VStack {
            Text(viewModel.title)
                .onTapGesture {
                    
                }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}
