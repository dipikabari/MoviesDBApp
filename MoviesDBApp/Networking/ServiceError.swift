//
//  ServiceError.swift
//  Movies
//
//  Created by Dipika Bari on 09/03/2022.
//

import Foundation

enum ServiceError: Error {
    case failedToCreateRequest
    case dataNotFound
    case parsingError
    case networkNotAvailable

}
