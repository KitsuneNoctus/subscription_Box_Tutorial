//
//  FeaturedSection.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    var numberOfItems: Int
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.33))
        
        // TODO: Step 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // TODO: Step 3. Try using 95% width and 35% height
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalHeight(0.35))
        
        // TODO: Step 4. You will need to specify how many items per group (3)
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem:item, count: 3)
        
        
        // TODO: Step 5
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath)
        return cell
    }
    
}
