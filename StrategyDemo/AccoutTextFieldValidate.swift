//
//  AccoutTextFieldValidate.swift
//  StrategyDemo
//
//  Created by xiaoYu on 2017/12/16.
//  Copyright © 2017年 xiaoYu. All rights reserved.
//

import UIKit

// 子类化
class AccoutTextFieldValidate: TextFieldValidate {

    override func validateInputTextField(textField: UITextField) -> Bool {
        
        if textField.text?.count == 0 {
            self.inputString = "字符串不能为空"
            return false
        }
        
        guard let regex = try?NSRegularExpression(pattern: "^[a-zA-Z]*$", options: NSRegularExpression.Options.anchorsMatchLines) else {
            return false
        }
        
        let results = regex.matches(in: textField.text!, options: [], range: NSRange.init(location: 0, length: (textField.text?.count)!))
        
        if results.count == 0 {
            self.inputString = "不全是字母，输入有误"
            return false
        }else {
            self.inputString = "全是字母是，输入正确"
            return true
        }
    }
    
}
