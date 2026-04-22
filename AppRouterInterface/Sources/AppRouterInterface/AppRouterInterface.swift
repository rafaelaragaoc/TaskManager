
import SwiftUI

public enum AppRoutes {
    case pomodoro
    case task
}

public protocol AppRouterInterface {
    
    func route(to route: AppRoutes)
}
