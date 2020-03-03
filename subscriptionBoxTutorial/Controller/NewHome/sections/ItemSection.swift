//
//  ItemSection.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 3/2/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

struct ItemSection: Section {
    var numberOfItems = 6
    
    // TODO: create an initializer to set the title
    let item = Item(name: "Dog Collar", image: "")
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.75), heightDimension: .fractionalHeight(0.35))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath) as! FeaturedCell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ItemViewCell.self), for: indexPath) as! ItemViewCell
//        cell.setContents(item: item )
        return cell
    }
    
}
