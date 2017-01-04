//
//  ShareExampleViewController.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class ShareExampleViewController: UIViewController {
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func share(_ sender: Any) {
        self.close()
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.close()
    }
    
    func close() {
        self.dismiss(animated: true, completion: nil)
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
