//
//  ValidateTextField.swift
//  StrategyDemo
//
//  Created by xiaoYu on 2017/12/16.
//  Copyright © 2017年 xiaoYu. All rights reserved.
//

import UIKit

// 场景（context）类
class ValidateTextField: UITextField {

    // 抽象的策略
    var inputValidate:TextFieldValidate? // 聚合关系 ：引用TextFieldValidate 拥有TextFieldValidate对象的实体
    
    func validate() -> Bool {
        let result = self.inputValidate?.validateInputTextField(textField: self)
        return result!
    }

}
