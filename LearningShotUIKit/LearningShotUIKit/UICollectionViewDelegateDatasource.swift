//
//  UICollectionViewDelegateDatasource.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class UICollectionViewDelegateDatasource: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var data:Array<AnyObject>?
    var selectionDelegate: SelectionProtocol?
    
    init(data:Array<AnyObject>?, selectionDelegate: SelectionProtocol?) {
        self.data = data
        self.selectionDelegate = selectionDelegate
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = self.data?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCustonCellIdentifier", for: indexPath) as? UICollectionViewCustonCell
        if let color = data?[indexPath.row]{
            cell?.setup(color: color as! UIColor)
        }
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let color = data?[indexPath.row]{
            self.selectionDelegate?.didSelectedColor(color: color as! UIColor)
        }
    }
    
}
