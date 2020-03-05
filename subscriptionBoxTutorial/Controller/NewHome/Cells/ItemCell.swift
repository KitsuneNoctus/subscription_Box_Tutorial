//
//  ItemCell.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 3/4/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    static var identifier: String = "ItemCell"
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup(){
        itemImage.layer.cornerRadius = 10
    }

}
