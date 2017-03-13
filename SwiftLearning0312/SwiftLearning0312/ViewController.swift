//
//  ViewController.swift
//  SwiftLearning0312
//
//  Created by cao yu on 2017/3/12.
//  Copyright © 2017年 cao yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var myView = UIView.init(frame : .init(x: 90, y: 90, width: 90, height: 90))
        myView.backgroundColor = UIColor.black
        self.view.addSubview(myView)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

