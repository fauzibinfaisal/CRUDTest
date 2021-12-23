//
//  ApiConfig.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import Foundation

//MARK: This Class contains API Constants and Config
class APIConfig {
    
    static let shared = APIConfig()
    
    let baseURL = "https://hoodwink.medkomtek.net/"
    let apiKey = Secrets.API_KEY
    var token: String?
        
}
 
