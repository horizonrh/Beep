//
//  AddProcessController.swift
//  Beep
//
//  Created by cdxahz on 15/9/8.
//  Copyright (c) 2015年 CDXAHZ. All rights reserved.
//

import Foundation
import UIKit

class AddProcessController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        var label = UILabel(frame: CGRect(x: 10, y: 100, width: 400, height: 100))
        label.text = "发布成功"
        
        self.view.addSubview(label)
        
    }
}