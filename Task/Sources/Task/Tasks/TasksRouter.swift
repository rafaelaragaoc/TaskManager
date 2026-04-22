//
//  TasksRouter.swift
//  Task
//
//  Created by Rafael on 26/08/25.
//

import SwiftUI

enum TasksRoutes: Hashable {
    case taskDetail(Int)
}

final class TasksRouter {
    var path = [TasksRoutes]()
    func route(to route: TasksRoutes) {
        path.append( route )
//        switch route {
//        case .taskDetail(let id):
//            Text("Task Detail \(id)")
//        }
    }
}
