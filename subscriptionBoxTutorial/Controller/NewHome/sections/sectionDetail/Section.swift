//
//  Section.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

protocol Section {
    var numberOfItems: Int { get }
    func layoutSection() -> NSCollectionLayoutSection?
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
