import Foundation
import Combine
import DI

public protocol HTTPClient {
    func fetch(url: URL) -> AnyPublisher<Data, Error>
    func fetch<T: Decodable>(url: URL, type: T.Type) -> AnyPublisher<T, Error>
}
