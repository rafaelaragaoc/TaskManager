import Foundation

protocol TasksUseCase {
    func fetchAllTasks()  -> [TaskEntity]
}

final class DefaultTasksUseCase: TasksUseCase {
    let tasksRepository: TasksRepository
    
    init(tasksRepository: TasksRepository) {
        self.tasksRepository = tasksRepository
    }
    
    func fetchAllTasks()  -> [TaskEntity] {
        tasksRepository.fetchData()
    }
}
