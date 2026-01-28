import Foundation
import UIKit

public protocol ImageService {
    func fetchImage(url: URL) async throws -> UIImage
}
