//
//  Product.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import Foundation

// MARK: - Doctor Model
struct Product: Decodable {
    let id: Int
    let sku, productName: String
    let qty, price: Int
    let unit: String
    let image: String?
    let status: Int?
    let createdAt, updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id, sku
        case productName = "product_name"
        case qty, price, unit, image, status
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
