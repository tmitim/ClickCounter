//
//  ViewController.swift
//  Click
//
//  Created by Timothy Myung on 8/30/16.
//  Copyright © 2016 Timothy Myung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0;
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
}

