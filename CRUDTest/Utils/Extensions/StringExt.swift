//
//  StringExt.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import Foundation

extension String {
    
    //MARK: Parsing HTML String to NSAttributedString
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
