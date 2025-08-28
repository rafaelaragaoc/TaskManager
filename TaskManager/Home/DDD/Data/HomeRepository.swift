import Foundation

protocol HomeRepository {
    func fetchData() -> [HomeEntity]
}

final class RemoteHomeRepository: HomeRepository {
    func fetchData() -> [HomeEntity] {
        return []
    }
}
