import Foundation

final class TaskDetailViewModel: ObservableObject {
    @Published var title: String = "Hello MVVM"

    func onAppear() {
        // lógica ao aparecer
    }
}
