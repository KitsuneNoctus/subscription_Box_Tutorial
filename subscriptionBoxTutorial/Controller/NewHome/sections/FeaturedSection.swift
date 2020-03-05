//
//  FeaturedSection.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    
    let data: [Category] = [
        Category(name: "Food", image: "petFood"),
        Category(name: "Toys", image: "dogtoy"),
        Category(name: "Treats",image:"treat"),
        Category(name: "Grooming", image: "dogbrush"),
        Category(name: "Meds", image: "meds"),
        Category(name: "Accesories", image: "collar")
    ]
    
    var numberOfItems = 6
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.9))
        //========
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        //========
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(150), heightDimension: .absolute(200))
        //========
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        //========
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath) as! FeaturedCell
        cell.featuredLabel.text = data[indexPath.row].name
        cell.featuredImage.image = UIImage(named: data[indexPath.row].image)
        return cell
    }
    
    
}
