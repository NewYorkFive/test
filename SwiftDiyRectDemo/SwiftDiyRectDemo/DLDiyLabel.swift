//
//  DLDiyLabel.swift
//  SwiftDiyRectDemo
//
//  Created by NowOrNever on 27/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit
import SnapKit

class DLDiyLabel: UIView {
    var labelString:String = "labelString" {
        didSet{
            self.label.text = labelString
        }
    }
    
    var labelTextSize:CGFloat = 20 {
        didSet{
            self.label.font = UIFont.systemFont(ofSize: labelTextSize)
        }
    }
    
    fileprivate lazy var backgroundImageView:UIImageView = UIImageView.init(image: UIImage.init(named: "WechatIMG5"))
    
    fileprivate lazy var label:UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.text = "label"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUI(){
        addSubview(self.backgroundImageView)
        addSubview(self.label)
        
        self.backgroundImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self);
        }
        
        self.label.snp.makeConstraints { (make) in
            make.center.equalTo(self);
        }
        
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
