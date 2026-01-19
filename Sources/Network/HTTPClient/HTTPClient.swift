import Foundation
import Combine
import DI

public protocol HTTPClient {
    func fetch(request: URLRequest) -> AnyPublisher<Data, Error>
    func fetch<T: Decodable>(urlRequest: URLRequest, type: T.Type) -> AnyPublisher<T, Error>
}
