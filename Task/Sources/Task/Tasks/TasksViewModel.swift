import Foundation

final class TasksViewModel: ObservableObject {
    @Published var title: String = "Tarefas"

    func onAppear() {
        // lógica ao aparecer
    }
}
