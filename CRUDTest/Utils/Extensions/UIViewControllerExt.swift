//
//  UIViewControllerExt.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 24/12/21.
//

import Foundation
import UIKit

extension UIViewController {
    //MARK: Progress Dialog Toggle
    func showProgressDialog(show: Bool){
        DispatchQueue.main.async {
            if(show) {
                ProgressDialog.shared.show(view: self.view)
            } else {
                ProgressDialog.shared.hide()
            }
        }
    }
    
    //MARK: Show Error Message
    func showErrorMessage(message: String){
        DispatchQueue.main.async {
            Utils.shared.showAlert("Failed", message: message, parent: self)
        }
    }
    
    //MARK: Show Request Failed Message
    func onRequestFailed(message: String) -> Bool {
        showProgressDialog(show: false)
        showErrorMessage(message: message)
        print("error : \(message)")
        return false
    }
}
