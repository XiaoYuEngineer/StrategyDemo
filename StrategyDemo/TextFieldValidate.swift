//
//  TextFieldValidate.swift
//  StrategyDemo
//
//  Created by xiaoYu on 2017/12/16.
//  Copyright © 2017年 xiaoYu. All rights reserved.
//

import UIKit


// 抽象策略类 抽象基类 或者 协议
class TextFieldValidate: NSObject {
    
    var inputString:String?
    
    // 为子类提供 重载或实现的方法
    func validateInputTextField(textField:UITextField) -> Bool {
        return false
    }
}
