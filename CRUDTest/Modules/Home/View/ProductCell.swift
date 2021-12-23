//
//  ProductCell.swift
//  CRUDTest
//
//  Created by Infotech Solutions on 22/12/21.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var bgCell: UIView!
    @IBOutlet weak var skuLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!


    //MARK: Binding Doctor to Cell View
    var product: Product? = nil {
        didSet{
            skuLabel.text = product?.sku
            nameLabel.text = product?.productName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupView(){
        bgCell.setDefaultCornerRadius()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
    }
    
}
