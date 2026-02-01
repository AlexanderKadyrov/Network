import Foundation
import DI

fileprivate extension DIStorage {
    struct ImageServiceKey: DIKey {
        nonisolated(unsafe) static var currentValue: ImageService = ImageServiceImpl()
    }
}

public extension DIStorage {
    var imageService: ImageService {
        get { Self.self[ImageServiceKey.self] }
        set { Self.self[ImageServiceKey.self] = newValue }
    }
}
