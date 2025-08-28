import Foundation

final class HomeViewModel: ObservableObject {
    @Published var title: String = "Hello MVVM"

    func onAppear() {
        // lógica ao aparecer
    }
}
