//
//  MoreViewController.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 04/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController, TextFieldProtocol {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var textDelegate: UITextFieldExampleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.textDelegate = UITextFieldExampleDelegate(textDelegate: self)
        self.textField.delegate = self.textDelegate
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(closeKeyboard)))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeKeyboard() {
        self.view.endEditing(true)
    }
    
    func shouldActiveButton(active: Bool) {
        self.sendButton.isEnabled = active
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
