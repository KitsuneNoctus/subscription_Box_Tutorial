//
//  CollectionViewCell.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static var identifier: String = "CCell"
    var textLabel: UILabel!
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10)
        ])
        
        //Adding text label inside the cell
        let textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(textLabel)
        
        //Constraints
        NSLayoutConstraint.activate([
            textLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            textLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor)
        ])
        
        //Customization
        self.backgroundColor = UIColor.purple
        self.textLabel = textLabel
        self.textLabel.font = UIFont(name: "Helvetica", size: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
