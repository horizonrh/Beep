//
//  PubViewController.swift
//  Beep
//
//  Created by cdxahz on 15/9/2.
//  Copyright (c) 2015年 CDXAHZ. All rights reserved.
//

import Foundation
import UIKit

class PubViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        var label = UILabel(frame: CGRect(x: 10, y: 100, width: 400, height: 100))
        label.text = "我的个人信息"
        
        self.view.addSubview(label)
        
    }
}