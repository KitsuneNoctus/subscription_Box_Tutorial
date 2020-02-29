//
//  TitleCell.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
    static var identifier: String = "TitleCell"
    @IBOutlet weak var LblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(title: String) {
        LblTitle.text = title
    }
}
