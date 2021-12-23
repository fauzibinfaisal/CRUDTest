//
//  ProductRequest.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 24/12/21.
//

import Foundation

class ProductRequest: BaseRequest {
    typealias DataResponse = [Product]
    
    func getProductList(completion: @escaping(BaseResult<DataResponse>) -> Void) {
        let path = "api/items"
        
        request(.GET, path: path) { (result) in
            completion(result)
        }
    }
    
}

