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
    
        var scollView = UIScrollView(frame: CGRect(x: 0, y: 24, width: 400, height: 600))
        
        
        var contentTable = UITableView(frame: CGRect(x: 0, y: 120, width: 400, height: 600), style: UITableViewStyle.Plain)
    

        for(var i = 0; i < 8; i++){
            var labelView = UILabel(frame: CGRect(x: 0, y: rowHeight*i, width: 400, height: rowHeight))
            labelView.text = "Title"
            
            var authorView = UILabel(frame: CGRect(x:40, y:rowHeight*i, width:400, height:rowHeight))
            authorView.text = "Author"
            
            var contentView = UILabel(frame: CGRect(x: 10, y: rowHeight*i+20, width: 400, height: rowHeight))
            contentView.text = "Content xxxxxxx"
            
            
            var cellButton = UIButton(frame: CGRect(x: 120, y: rowHeight*i, width: 400, height: rowHeight))
            cellButton.setTitle("Button", forState: UIControlState.Normal)
            
            
            var cell = UITableViewCell(frame: CGRectMake(0, 0, 400, 100))
            cell.addSubview(labelView)
            cell.addSubview(authorView)
            cell.addSubview(contentView)
            cell.addSubview(cellButton)
            contentTable.rowHeight = 100
            
            contentTable.addSubview(cell)

        }
        
        let imageUrl = NSURL(string: "http://pic1a.nipic.com/2008-12-04/2008124215522671_2.jpg")
        
        var data = NSData(contentsOfURL: imageUrl!)
        var headImg = UIImage(data: data!, scale:4)
        
        
        var header = UIImageView(frame: CGRect(x: 0, y: 0, width:400, height: 120))
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

