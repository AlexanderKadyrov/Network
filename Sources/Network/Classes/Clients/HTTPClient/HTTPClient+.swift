import Foundation
import DI

fileprivate extension DIStorage {
    struct HTTPClientKey: DIKey {
        nonisolated(unsafe) static var currentValue: HTTPClient = HTTPClientImpl()
    }
}

public extension DIStorage {
    var httpClient: HTTPClient {
        get { Self[HTTPClientKey.self] }
        set { Self[HTTPClientKey.self] = newValue }
    }
}
