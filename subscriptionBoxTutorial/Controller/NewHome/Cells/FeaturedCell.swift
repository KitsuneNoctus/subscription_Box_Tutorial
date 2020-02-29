//
//  FeaturedCell.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class FeaturedCell: UICollectionViewCell {
    static var identifier: String = "FeaturedCell"
    @IBOutlet weak var featuredImage: UIImageView!
    @IBOutlet weak var featuredLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
//        self.backgroundView?.backgroundColor = UIColor.purple
        // Initialization code
    }
    
    func set(title: String) {
        featuredLabel.text = title
    }
    
    func setup(){
        self.layer.cornerRadius = 10
    }

}
