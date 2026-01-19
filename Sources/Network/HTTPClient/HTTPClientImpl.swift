import Foundation
import Combine

struct HTTPClientImpl: HTTPClient {
    
    func fetch(request: URLRequest) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
    func fetch<T: Decodable>(urlRequest: URLRequest, type: T.Type) -> AnyPublisher<T, Error> {
        return fetch(request: urlRequest)
            .decode(type: type, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
