//
//  BaseResult.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 24/12/21.
//

import Foundation

public struct BaseResult<T: Decodable> {
    var status: Bool
    var data: T?
    var message: String
}
