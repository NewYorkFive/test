//
//  DiyView.swift
//  CAShapeLayerTest
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit

class DiyView: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let rectX = rect.origin.x
        let rectY = rect.origin.y
        let rectHeight = rect.size.height
        let rectWidth = rect.size.width
        let path = UIBezierPath.init()
        path.move(to: CGPoint.init(x: rectX, y: rectY))
        path.addLine(to: CGPoint.init(x: rectX, y: rectY + rectHeight))
        path.addLine(to: CGPoint.init(x: rectX + rectWidth, y: rectY + rectHeight))
        path.addLine(to: CGPoint.init(x: rectX + rectWidth, y: rectY + rectHeight * 0.5))
        path.close()
        
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.path = path.cgPath
        
        self.layer.mask = shapeLayer
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
