//
//  TestView.swift
//  SwiftLearning0312
//
//  Created by cao yu on 2017/3/12.
//  Copyright © 2017年 cao yu. All rights reserved.
//

import UIKit

class TestView: UIView,UITableViewDelegate {

    /*
     Swift中属性分两种：储存属性和计算属性，并且在Swift中并不强调成员变量的概念。无论从概念上还是定义方式上，储存属性更像是其他语言中的成员变量，但是不同的是，可以控制读写操作，通过属性监视器来查看属性的变化以及快速实现懒加载等功能。
     */
//    var firstName : String
//    var secondName : String //  是储存属性
//    init(firname : String,secondName : String) {
//            self.firstName = firstName
//            self.secondName = secondName
//      
//    }
    var table = UITableView.init(frame: .init(x: 0, y: 0, width: 90, height: 90), style: UITableViewStyle.plain)
    

    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
