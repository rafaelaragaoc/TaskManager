//
//  TasksRouter.swift
//  Task
//
//  Created by Rafael on 26/08/25.
//

import SwiftUI

enum TasksRoutes {
    case pomodoro
    case tasksList
    case taskDetail(Int)
}

final class TasksRouter {
    func route(to route: TasksRoutes) -> some View {
        
        switch route {
        case .pomodoro:
            Text("Pomodoro")
        case .tasksList:
            Text("Tasks List")
        case .taskDetail(let id):
            Text("Task Detail \(id)")
        }
    }
}
