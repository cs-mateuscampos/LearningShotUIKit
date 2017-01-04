//
//  CollectionExampleViewController.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class CollectionExampleViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Properties
    var uicollectionViewDelegateDatasource: UICollectionViewDelegateDatasource?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UICollectionViewCustonCell.self, forCellWithReuseIdentifier: "UICollectionViewCustonCellIdentifier")
        
        let object = ObjectFactory.colorsArray(numberOfItems: 102)
        self.uicollectionViewDelegateDatasource = UICollectionViewDelegateDatasource(data: object)
        
        self.collectionView.dataSource = self.uicollectionViewDelegateDatasource
        self.collectionView.delegate = self.uicollectionViewDelegateDatasource
        self.collectionView.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
