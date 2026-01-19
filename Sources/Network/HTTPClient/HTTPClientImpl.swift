import Foundation
import Combine

struct HTTPClientImpl: HTTPClient {
    
    func fetch(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
    func fetch<T: Decodable>(url: URL, type: T.Type) -> AnyPublisher<T, Error> {
        return fetch(url: url)
            .decode(type: type, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
