//
//  Operate.swift
//  Calculate_demo
//
//  Created by Liu on 15/11/18.
//  Copyright © 2015年 AngryBear. All rights reserved.
//

import Foundation

class Operate {
    var number1:Int64 = 0
    var number2:Int64 = 0
    
    func getResult() -> Int64 {
        return 0
    }
}

class AddOperation: Operate {
    override func getResult() -> Int64 {
        let result: Int64 = self.number1 + self.number2
        return result
    }
}

class SubtractOperation: Operate {
    override func getResult() -> Int64 {
        let result: Int64 = self.number1 - self.number2
        return result
    }
}

class MultiplyOperation: Operate {
    override func getResult() -> Int64 {
        let result: Int64 = self.number1*self.number2
        return result
    }
}

class DivideOperation: Operate {
    override func getResult() -> Int64 {
        let result: Int64 = self.number2 != 0 ? self.number1/self.number2 : 0
        return result
    }
}

class OperateFactory {
    class func createOperation(operateStr: Character) -> Operate? {
        var operateObj: Operate?
        switch operateStr {
        case "+":
            operateObj = AddOperation()
            break
        case "-":
            operateObj = SubtractOperation()
            break
        case "*":
            operateObj = MultiplyOperation()
            break
        case "/":
            operateObj = DivideOperation()
            break
        default:
            break
        }
        return operateObj
    }
}