//
//  UIButton+Extension.swift
//  Swift_Sudoku_Solver
//
//  Created by NowOrNever on 14/04/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit

extension UIButton{
    convenience init(backGroundImageName:String,title:String,target:Any?,action:Selector,layerCornerRadius:CGFloat){
        self.init()
        setBackgroundImage(UIImage(named:backGroundImageName), for: .normal)
        setTitle(title, for: .normal)
        addTarget(target, action: action, for: .touchUpInside)
        if layerCornerRadius != 0 {
            layer.cornerRadius = layerCornerRadius
            layer.masksToBounds = true
        }
    }
}

extension UIButton{
    convenience init(title:String,target:Any?,action:Selector){
        self.init()
        setBackgroundImage(UIImage(named:"iphonetall-background-wood-x10"), for: .normal)
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
        setTitle(title, for: .normal)
        addTarget(target, action:action, for: .touchUpInside)
    }
    
    convenience init(title:String, target:Any?, action:Selector, fontSize:CGFloat, color:UIColor){
        self.init()
        setTitle(title, for: .normal)
        addTarget(target, action: action, for: .touchUpInside)
        titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        titleLabel?.textColor = color
        titleLabel?.textAlignment = .center
    }
}
