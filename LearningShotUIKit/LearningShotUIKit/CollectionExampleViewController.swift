//
//  CollectionExampleViewController.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class CollectionExampleViewController: UIViewController, SelectionProtocol {
    
    var selecteColor: UIColor?
    
    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Properties
    var uicollectionViewDelegateDatasource: UICollectionViewDelegateDatasource?
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UICollectionViewCustonCell.self, forCellWithReuseIdentifier: "UICollectionViewCustonCellIdentifier")
        
        let object = ObjectFactory.colorsArray(numberOfItems: 102)
        self.uicollectionViewDelegateDatasource = UICollectionViewDelegateDatasource(data: object, selectionDelegate: self)
        
        self.collectionView.dataSource = self.uicollectionViewDelegateDatasource
        self.collectionView.delegate = self.uicollectionViewDelegateDatasource
        self.collectionView.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Selection Delegate
    func didSelectedColor(color: UIColor) {
        self.selecteColor = color
        self.performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "detailSegue" {
            let detailViewController = segue.destination as! DetailExampleViewController
            detailViewController.selectedColor = self.selecteColor
        }
    }

}
