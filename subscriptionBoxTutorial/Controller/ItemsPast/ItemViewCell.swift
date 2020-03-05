//
//  ItemViewCell.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ItemViewCell: UITableViewCell {

    static var identifier = "ItemCell"
        
        let background: UIView = {
            let background = UIView()
            background.layer.cornerRadius = 5
    //        background.backgroundColor = #colorLiteral(red: 0.8186396956, green: 0.7955000997, blue: 1, alpha: 1)
            background.layer.masksToBounds = true
            background.translatesAutoresizingMaskIntoConstraints = false
            return background
        }()
    
    let itemImage: UIImageView = {
        let itemImage = UIImageView()
        itemImage.contentMode = .scaleAspectFit
        itemImage.clipsToBounds = true
        itemImage.translatesAutoresizingMaskIntoConstraints = false
        return itemImage
    }()

        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.setup()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.setup()
        }
        
        func setup(){
//            self.contentView.addSubview(background)
//            NSLayoutConstraint.activate([
//                background.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
//                background.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
//                background.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
//                background.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
//            ])
            
//            self.contentView.addSubview(itemImage)
//            NSLayoutConstraint.activate([
//                itemImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: -40),
//                itemImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5),
//                itemImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -5)
//            ])
            
        }
        
    func setContents(item: Item){
            textLabel?.text = item.name

        }

}
