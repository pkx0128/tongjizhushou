//
//  ViewController.swift
//  tongjizhushou
//
//  Created by Pankx on 16/2/1.
//  Copyright © 2016年 Pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {
    //连接textField
    @IBOutlet weak var T100: UITextField!
    @IBOutlet weak var T50: UITextField!
    @IBOutlet weak var T20: UITextField!
    @IBOutlet weak var T10: UITextField!
    @IBOutlet weak var T5: UITextField!
    @IBOutlet weak var T1: UITextField!
    @IBOutlet weak var T05: UITextField!
    @IBOutlet weak var T01: UITextField!
    @IBOutlet weak var startMoney: UITextField!
    
    //连接Label
    @IBOutlet weak var L100: UILabel!
    @IBOutlet weak var L50: UILabel!
    @IBOutlet weak var L20: UILabel!
    @IBOutlet weak var L10: UILabel!
    @IBOutlet weak var L5: UILabel!
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L05: UILabel!
    @IBOutlet weak var L01: UILabel!
    //总计
    @IBOutlet weak var Lall: UILabel!
    //需拿出的金额
    @IBOutlet weak var Llast: UILabel!
    //总数量
    @IBOutlet weak var Lcount: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //实现点ＴextFiel外区域隐藏键盘
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

        T100.resignFirstResponder();
        T50.resignFirstResponder();
        T20.resignFirstResponder();
        T10.resignFirstResponder();
        T5.resignFirstResponder();
        T1.resignFirstResponder();
        T05.resignFirstResponder();
        T01.resignFirstResponder();
        startMoney.resignFirstResponder();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

