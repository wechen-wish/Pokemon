//
//  API.swift
//  Pokemon
//
//  Created by Wenxuan Chen on 2/16/23.
//

import Foundation

enum APIError: Error {
    case unknown
}

final class API {
    @discardableResult func fetchData(url: URL, completion: ((Result<Data, Error>) -> Void)?) -> URLSessionDataTask {
        return URLSessionDataTask()
    }
}
