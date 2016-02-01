//
//  ViewController.swift
//  tongjizhushou
//
//  Created by Pankx on 16/2/1.
//  Copyright © 2016年 Pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

