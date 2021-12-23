//
//  ErrorResponse.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 24/12/21.
//

import Foundation

public struct ErrorResponse: Codable{
    var message: String?
    var error: String?
}
