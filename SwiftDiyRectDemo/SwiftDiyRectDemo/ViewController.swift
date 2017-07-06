//
//  ViewController.swift
//  SwiftDiyRectDemo
//
//  Created by NowOrNever on 27/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    fileprivate func setupUI(){
//        let diyLabel = DLDiyLabel()
//        diyLabel.labelTextSize = 30;
//        diyLabel.labelString = "9处不同";
//        view.addSubview(diyLabel)
//        diyLabel.snp.makeConstraints { (make) in
//            make.center.equalTo(view)
//            make.width.equalTo(200)
//            make.height.equalTo(80)
//        }
        let label = DLRectLabel()
        label.topLeftRadius = false
        label.bottomRightRadius = false
        label.cornerRadius = 32
        label.bgColor = UIColor.blue
        
        label.text = "9处不同"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = UIColor.white
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalTo(view)
            make.width.equalTo(200)
            make.height.equalTo(80)
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

