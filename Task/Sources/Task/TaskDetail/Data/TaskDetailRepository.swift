import Foundation

protocol TaskDetailRepository {
    func fetchData() -> [TaskDetailEntity]
}

final class RemoteTaskDetailRepository: TaskDetailRepository {
    func fetchData() -> [TaskDetailEntity] {
        return []
    }
}
