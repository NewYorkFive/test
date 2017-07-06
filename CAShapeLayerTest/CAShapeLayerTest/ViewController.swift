//
//  ViewController.swift
//  CAShapeLayerTest
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupUI()
        testDiy()
    }
    
    //抽成类
    fileprivate func testDiy(){
        let diyView = DiyView()
//        let diyView = DiyImageView.init(image: UIImage.init(named: "TifaLockhart"))
//        diyView.backgroundColor = UIColor.randomColor()
        view.addSubview(diyView)
        diyView.snp.makeConstraints { (make) in
            make.center.equalTo(view)
            make.height.equalTo(225)
            make.width.equalTo(300)
        }
    }
    
    
    //直接写，不抽成类
    fileprivate func setupUI(){
        let imageView = UIImageView.init(image: UIImage.init(named: "TifaLockhart"))
        view.addSubview(imageView)
        
        imageView.snp.makeConstraints { (make) in
            make.center.equalTo(view)
            make.height.equalTo(225)
            make.width.equalTo(300)
        }
        view.layoutIfNeeded()
        
        
        let path = UIBezierPath.init()
        path.move(to: CGPoint.init(x: 0, y: 0))
        path.addLine(to: CGPoint.init(x: 0, y: imageView.height))
        path.addLine(to: CGPoint.init(x: imageView.width, y: imageView.height))
        path.addLine(to: CGPoint.init(x: imageView.width, y: imageView.height * 0.5))
        path.close()
        
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.path = path.cgPath
        
        imageView.layer.mask = shapeLayer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

