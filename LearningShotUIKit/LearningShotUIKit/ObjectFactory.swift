//
//  ObjectFactory.swift
//  LearningShotUIKit
//
//  Created by Mateus Campos on 03/01/17.
//  Copyright © 2017 Mateus Campos. All rights reserved.
//

import UIKit


class ObjectFactory {
    
    static func colorsArray(numberOfItems:Int) -> Array<AnyObject> {
        
        var arr:Array<AnyObject> = []
        
        for _ in 1...numberOfItems {
            
            let randomRed:CGFloat = CGFloat(drand48())
            let randomGreen:CGFloat = CGFloat(drand48())
            let randomBlue:CGFloat = CGFloat(drand48())
            let color = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
            arr.append(color)
            
        }
        
        return arr
        
    }
    
    
}
