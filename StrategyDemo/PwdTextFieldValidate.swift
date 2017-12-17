//
//  PwdTextFieldValidate.swift
//  StrategyDemo
//
//  Created by xiaoYu on 2017/12/16.
//  Copyright © 2017年 xiaoYu. All rights reserved.
//

import UIKit

// 子类化
class PwdTextFieldValidate: TextFieldValidate {
    
    override func validateInputTextField(textField: UITextField) -> Bool {
        
        if textField.text?.count == 0 {
            self.inputString = "密码不能为空"
            return false
        }
        
        guard let regex = try?NSRegularExpression(pattern: "^[0-9]*$", options: NSRegularExpression.Options.anchorsMatchLines) else {
            return false
        }
        
        let results = regex.matches(in: textField.text!, options: [], range: NSRange.init(location: 0, length: (textField.text?.count)!))
        
        if results.count == 0 {
            self.inputString = "不全是数字，输入有误"
            return false
        }else {
            self.inputString = "全是数字，输入正确"
            return true
        }
    }
}
