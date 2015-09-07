//
//  SecondViewController.swift
//  Beep
//
//  Created by cdxahz on 15/8/31.
//  Copyright (c) 2015年 CDXAHZ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rowHeight = 100
        
        let viewWidth = 400
    
        var scollView = UIScrollView(frame: CGRect(x: 0, y: 24, width: viewWidth, height: 600))
        
        
        var contentTable = UITableView(frame: CGRect(x: 0, y: 150, width: viewWidth, height: 600), style: UITableViewStyle.Plain)
        
    

    

        for(var i = 0; i < 8; i++){
            var labelView = UILabel(frame: CGRect(x: 0, y: rowHeight*i, width: viewWidth, height: rowHeight))
            labelView.text = "Title"
            
            var authorView = UILabel(frame: CGRect(x:40, y:rowHeight*i, width:viewWidth, height:rowHeight))
            authorView.text = "Author"
            
            var contentView = UILabel(frame: CGRect(x: 10, y: rowHeight*i+20, width: viewWidth, height: rowHeight))
            contentView.text = "Content xxxxxxx"
            
            
            var cellButton = UIButton(frame: CGRect(x: 120, y: rowHeight*i, width: viewWidth, height: rowHeight))
            cellButton.setTitle("Button", forState: UIControlState.Normal)
            
            
            var cell = UITableViewCell(frame: CGRectMake(0, 0, 400, 100))
            cell.addSubview(labelView)
            cell.addSubview(authorView)
            cell.addSubview(contentView)
            cell.addSubview(cellButton)
            contentTable.rowHeight = 100
            
            contentTable.addSubview(cell)

        }
        
        let imageUrl = NSURL(string: "http://img.ivsky.com/img/tupian/pre/201507/09/bashang-008.jpg")
        
        var data = NSData(contentsOfURL: imageUrl!)
        var headImg = UIImage(data: data!, scale:3)
        
        
        var header = UIImageView(frame: CGRect(x: 0, y: 0, width:viewWidth, height: 150))
        header.image = headImg
        
        
        scollView.addSubview(header)
        
      
        self.view.addSubview(scollView)
        self.view.addSubview(contentTable)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

