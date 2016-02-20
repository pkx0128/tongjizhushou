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
        Lall.text = "0";
        Lcount.text = "0";
        //计算Ｔ100
        if !((T100.text)!.isEmpty){
            L100.text = "\(Int(T100.text!)!*100)";
            T100.resignFirstResponder();
            Lall.text = "\(Int(T100.text!)!*100)";
            Lcount.text = "\(Int(T100.text!)!)";
        }
        //计算Ｔ50
        if !((T50.text)!.isEmpty){
            L50.text = "\(Int(T50.text!)!*50)";
            T50.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L50.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T50.text!)!)"
        }
        //计算Ｔ20
        if !((T20.text)!.isEmpty){
            L20.text = "\(Int(T20.text!)!*20)";
            T20.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L20.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T20.text!)!)"
        }
        //计算Ｔ10
        if !((T10.text)!.isEmpty){
            L10.text = "\(Int(T10.text!)!*10)";
            T10.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L10.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T10.text!)!)"
        }
        //计算Ｔ5
        if !((T5.text)!.isEmpty){
            L5.text = "\(Int(T5.text!)!*5)";
            T5.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L5.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T5.text!)!)"
        }
        //计算Ｔ1
        if !((T1.text)!.isEmpty){
            L1.text = "\(Int(T1.text!)!*1)";
            T1.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L1.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T1.text!)!)"
        }
        //计算Ｔ0.5
        if !((T05.text)!.isEmpty){
            L05.text = "\(Float(T05.text!)!*0.5)";
            T05.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L05.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T05.text!)!)"
        }
        //计算Ｔ01
        if !((T01.text)!.isEmpty){
            L01.text = "\(Float(T01.text!)!*0.1)";
            T01.resignFirstResponder();
            Lall.text = "\(Float(Lall.text!)! + Float(L01.text!)!)";
            Lcount.text = "\(Int(Lcount.text!)! + Int(T01.text!)!)"
        }
        //startMoney
        if !((startMoney.text)!.isEmpty){
            Llast.text = "\(Float(Lall.text!)! - Float(startMoney.text!)!)";
            
        }
        startMoney.resignFirstResponder();
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

