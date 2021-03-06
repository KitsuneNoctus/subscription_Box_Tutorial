//
//  TitleSection.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

struct TitleSection: Section {
    
    
    // TODO: Set a constant numberOfItems to 1
    let numberOfItems = 1
    // TODO: create a constant for the title of the header of type String
    let title: String
    // TODO: create an initializer to set the title
    init (title: String) {
        self.title = title
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        // TODO: Step 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        // TODO: Step 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // TODO: Step 3
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(70))
        
        // TODO: Step 4
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // TODO: Step 5
        let section = NSCollectionLayoutSection(group: group)
        
        return section
    }
    
    //Step 6
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: TitleCell.self), for: indexPath) as! TitleCell
        //TODO: set the cell's title
        cell.set(title: title)
        return cell
    }
}
