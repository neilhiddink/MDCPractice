//
//  ViewController.swift
//  MDC-Tutorial
//
//  Created by Neil Hiddink on 3/28/18.
//  Copyright © 2018 Neil Hiddink. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialAppBar
import MaterialComponents.MaterialCollections

// MARK: ViewController: MDCCollectionViewController

class ViewController: MDCCollectionViewController {

    // MARK: Properties
    
    
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styler.cellStyle = .card
    }

    // MARK: UICollectionView Data Source Methods
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if let textCell = cell as? MDCCollectionViewTextCell {
            let animals = ["Lions", "Tigers", "Bears", "Monkeys", "Birds"]
            textCell.textLabel?.text = animals[indexPath.item]
        }
        
        return cell
    }
}

