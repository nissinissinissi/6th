//
//  image.swift
//  dfghj
//
//  Created by User on 21 Tishri 5783.
//

import Foundation
import  UIKit

class imageCell: UICollectionViewCell{
  
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var galleryImageViewCell: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBAction func addItemLabel(_ sender: Any) {
    }
    func setup (with food: foods) {
        galleryImageViewCell.image = food.image
        nameLabel.text = food.title
        priceLabel.text = food.title
        
    }
    
}

    

