//
//  DetailExampleViewController.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class DetailExampleViewController: UIViewController {
    
    var selectedColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let color = self.selectedColor {
            self.view.backgroundColor = color
        }
        
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
