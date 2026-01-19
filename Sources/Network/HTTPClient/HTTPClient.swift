import Foundation
import DI

public protocol HTTPClient {
    func fetchRequest(url: URL) async throws -> Data
}
