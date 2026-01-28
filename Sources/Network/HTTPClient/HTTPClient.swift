import Foundation

public protocol HTTPClient {
    func fetchRequest(url: URL) async throws -> Data
}
