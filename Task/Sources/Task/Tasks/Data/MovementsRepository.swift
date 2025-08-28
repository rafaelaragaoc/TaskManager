import Foundation

protocol TasksRepository {
    func fetchData() -> [TaskEntity]
}

final class RemoteTasksRepository: TasksRepository {
    func fetchData() -> [TaskEntity] {
        return []
    }
}
