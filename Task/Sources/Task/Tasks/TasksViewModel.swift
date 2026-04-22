import Foundation

public final class TasksViewModel: ObservableObject {
    @Published var title: String = "Tarefas"
    @Published var router = TasksRouter()
    
    func onAppear() {
        // lógica ao aparecer
    }
}
