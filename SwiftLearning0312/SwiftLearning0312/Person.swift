//
//  Person.swift
//  SwiftLearning0312
//
//  Created by cao yu on 2017/3/13.
//  Copyright © 2017年 cao yu. All rights reserved.
//

import Foundation
/*
 Swift中的一个类可以不继承于任何一个类，那么此类就是一个基类
 */
//class Person{
//    //  定义属性
//    var name : String
//    var height = 0.0
//    //  构造器方法，如果不编写构造方法默认会自动生成一个无参构造方法
//    init(name : String) {
//        self.name = name
//    }
//    //  定义方法
//    func showMessage()  {
//        print("name = \(name),height = \(height)")
//    }
//    //  析构方法，在对象被释放时调用，相当于OC中的dealloc，注意此函数没有括号，没有参数，无法直接调用
//    deinit {
//        print("被释放了")
//    }
//    /*
//     1.Swift的类不是必须继承于一个基类（但OC通常是必须继承于NSObject），如果一个类没有继承于任何其他类，则这个类被称为基类
//     2.Swift中的属性定义形式类似于其他语句中的成员变量，尽管他有着成员变量没有的特性
//     3.
//     */
//
//    
//}
class Account{
    //
    var balance = 0.0{
        willSet{
            //   注意NewValue可以使用自定义值，并且在属性监视器内部调用属性不会引起循环引用，此时修改属性值没有用
            self.balance = 2.0
            print("Account.balance willSet newValue = \(newValue)  oldValue = \(self.balance)")
            
        }
        didSet{
            self.balance = 3.0
            // 注意oldValue可以使用自定义值，并且在属性监视器中调用属性不会引起循环引用，此时修改属性的值是最终值
            print("Account.balance didSet oldValue = \(oldValue) value = \(self.balance)")
        }
    }
    
}
class Person{
    /*
          Swift中的属性分为两种：存储属性和计算属性，并且在Swift中并不强调成员变量的概念。无论从概念上还是定义方式上来看存储属性更像是其他语言中的成员变量，但是不同的是可以进行控制读写操作，通过属性监视器来判断属性的变化以及快速实现懒加载等功能。
    */
    // firstName,secondName,age就是储存属性
    var firstName,secondName : String
    let age : Int
    //  fullName是一个计算属性，并且由于只定义了get方法，所以是一个只读属性
    var fullName : String{
        get{
            return firstName + "." + secondName
        }
        set{
            
        }
    }
    //  属性的懒加载，第一次访问的时候才会计算初值，在Swift中懒加载不一定是对象类型，也可以是基础类型
    lazy var account = Account()
    init(firstName : String,secondName : String,age : Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
    }
    
    func showMessage()  {
        print("fullName = \(fullName)")
    }
    /*
     1.计算属性并不是直接存储一个值，而是提供getter来获取一个值，或者利用setter来间接设置其他属性；
     2.lazy属性必须有初始值，必须是变量不能是常量（因为常量在构造完成之前就已经确定了值）
     3.在构造方法之前存储属性必须有值，无论是变量属性，还是常量属性，这个值既可以在属性创建时指定也可以在构造方法内指定
     */
    
}





