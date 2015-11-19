//
//  ViewController.swift
//  Calculate_Demo
//
//  Created by Liu on 15/11/18.
//  Copyright © 2015年 AngryBear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var third: UITextField!
    @IBOutlet var second: UITextField!
    @IBOutlet var first: UITextField!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func getResult(sender: AnyObject) {
        let operation = self.second.text!
        if !operation.isEmpty {
            let operate: Operate = OperateFactory.createOperation(operation[operation.startIndex])!
            operate.number1 = self.first.text!.isEmpty ? 0 : Int64.init(self.first.text!)!
            operate.number2 = self.third.text!.isEmpty ? 0 : Int64.init(self.third.text!)!
            self.result.text = String.init(stringInterpolationSegment: operate.getResult())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

