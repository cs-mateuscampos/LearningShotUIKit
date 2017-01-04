//
//  UITextFieldDelegate.swift
//  LearningShotUIKit
//
//  Created by Mateus de Campos on 04/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit


class UITextFieldExampleDelegate: NSObject, UITextFieldDelegate {
    
    var textExampleDelegate: TextFieldProtocol?
    
    init(textDelegate:TextFieldProtocol?) {
        self.textExampleDelegate = textDelegate
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        self.textExampleDelegate?.shouldActiveButton(active: true)
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.characters.count == 0 {
            self.textExampleDelegate?.shouldActiveButton(active: false)
        }
    }
    
}
