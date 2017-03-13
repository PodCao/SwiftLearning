//
//  ViewController.swift
//  SwiftLearning0312
//
//  Created by cao yu on 2017/3/12.
//  Copyright © 2017年 cao yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        var myView = UIView.init(frame : .init(x: 90, y: 90, width: 90, height: 90))
        myView.backgroundColor = UIColor.black
        self.view.addSubview(myView)
        
        var person = Person.init(firstName: "cao", secondName: "yu", age: 90)
//        person.height = 12.0
        person.showMessage()
        
        let btn = UIButton.init(type: UIButtonType.custom)

        btn.addTarget(self, action: #selector(btnAction), for: UIControlEvents.touchUpInside)
        btn.backgroundColor = UIColor.red
        btn.frame = CGRect.init(x: 90, y: 90, width: 90, height: 90)
        btn.titleLabel?.text = "kkk"
        btn.titleLabel?.textColor = UIColor.yellow
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        
        let table = UITableView.init(frame: .init(x: 0, y: 0, width: 300, height: 300), style: UITableViewStyle.plain)
        table.delegate = self
//        table.dataSource = self
//        table.register(UITableViewCell.class(), forCellReuseIdentifier: "12345")
        self.view .addSubview(table)
        
        self.view.addSubview(btn)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func btnAction(btn : UIButton){
        print("点击事件\(btn)")
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("\(indexPath.row)")
    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
//        
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

