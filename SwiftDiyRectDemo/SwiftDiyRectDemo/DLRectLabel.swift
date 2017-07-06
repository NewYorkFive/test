//
//  DLRectLabel.swift
//  SwiftDiyRectDemo
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit

class DLRectLabel: UILabel {
    var topLeftRadius:Bool = true
    var topRightRadius:Bool = true
    var bottomLeftRadius:Bool = true
    var bottomRightRadius:Bool = true
    
    fileprivate var rectCorner:UIRectCorner {
        get{
            var rectCorner = UIRectCorner()
            if self.topLeftRadius {
                rectCorner.insert(UIRectCorner.topLeft)
            }
            if self.topRightRadius {
                rectCorner.insert(UIRectCorner.topRight)
            }
            if self.bottomLeftRadius {
                rectCorner.insert(UIRectCorner.bottomLeft)
            }
            if self.bottomRightRadius {
                rectCorner.insert(UIRectCorner.bottomRight)
            }
            return rectCorner
        }
    }
    var cornerRadius:CGFloat = 10
    
    var bgColor:UIColor = UIColor.red
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUI(){
        self.textAlignment = .center
    }
    
    override func draw(_ rect: CGRect) {

        let bezierPath = UIBezierPath.init(roundedRect: rect, byRoundingCorners: self.rectCorner , cornerRadii: CGSize.init(width: self.cornerRadius, height: self.cornerRadius))
        let context = UIGraphicsGetCurrentContext()
        context?.addPath(bezierPath.cgPath)
        context?.closePath()
        context?.closePath()
        context?.clip()
        context?.addRect(rect)
        
        context?.setFillColor(self.bgColor.cgColor)
        context?.fillPath()
        super.draw(rect)

    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
