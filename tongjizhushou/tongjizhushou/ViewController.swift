//
//  ViewController.swift
//  tongjizhushou
//
//  Created by Pankx on 16/2/1.
//  Copyright © 2016年 Pankx. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate , UIAlertViewDelegate {
    //定义sqliteDB变量
    var db:SQLiteDB!
    
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
    
    //连接button
    //删除按钮
    @IBAction func DelButton(sender: UIButton) {
        delData();
    }
    //保存按钮
    @IBAction func SaveButton(sender: UIButton) {
        saveMoneyData();
    }
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建数据库
        makeSqlite();
        //加载数据库数据
        initMoneyData();
    }
    
    //实现点ＴextFiel外区域隐藏键盘
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //总计
        Lall.text = "0";
        //总数量
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
    
    
    //从SQLite加载数据
    func initMoneyData() {
        let data = db.query("select * from MoneyData")
        if data.count > 0 {
            //获取最后一行数据显示
            let MyData = data[data.count - 1]
            T100.text = MyData["count_100"] as? String;
            L100.text = MyData["money_100"] as? String;
            T50.text = MyData["count_50"] as? String;
            L50.text = MyData["money_50"] as? String;
            T20.text = MyData["count_20"] as? String;
            L20.text = MyData["money_20"] as? String;
            T10.text = MyData["count_10"] as? String;
            L10.text = MyData["money_10"] as? String;
            T5.text = MyData["count_5"] as? String;
            L5.text = MyData["money_5"] as? String;
            T1.text = MyData["count_1"] as? String;
            L1.text = MyData["money_1"] as? String;
            T05.text = MyData["count_05"] as? String;
            L05.text = MyData["money_05"] as? String;
            T01.text = MyData["count_01"] as? String;
            L01.text = MyData["money_01"] as? String;
            startMoney.text = MyData["startMoney"] as? String;
            Lall.text = MyData["Lall"] as? String;
            Lcount.text = MyData["Lcount"] as? String;
            Llast.text = MyData["Llast"] as? String;
        }
    }
    
    //保存数据到SQLite
    func saveMoneyData() {
        let count_100 = self.T100.text!
        let money_100 = self.L100.text!
        let count_50 = self.T50.text!
        let money_50 = self.L50.text!
        let count_20 = self.T20.text!
        let money_20 = self.L20.text!
        let count_10 = self.T10.text!
        let money_10 = self.L10.text!
        let count_5 = self.T5.text!
        let money_5 = self.L5.text!
        let count_1 = self.T1.text!
        let money_1 = self.L1.text!
        let count_05 = self.T05.text!
        let money_05 = self.L05.text!
        let count_01 = self.T01.text!
        let money_01 = self.L01.text!
        let VstartMoney = self.startMoney.text!
        let VLall = self.Lall.text!
        let VLcount = self.Lcount.text!
        let vLlast = self.Llast.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into MoneyData(count_100,money_100,count_50,money_50,count_20,money_20,count_10,money_10,count_5,money_5,count_1,money_1,count_05,money_05,count_01,money_01,startMoney,Lall,Lcount,Llast) values('\(count_100)','\(money_100)','\(count_50)','\(money_50)','\(count_20)','\(money_20)','\(count_10)','\(money_10)','\(count_5)','\(money_5)','\(count_1)','\(money_1)','\(count_05)','\(money_05)','\(count_01)','\(money_01)','\(VstartMoney)','\(VLall)','\(VLcount)','\(vLlast)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
         let result = db.execute(sql)
//        print(result)
//        保存成功提示
        if (result != result+1){
            let al = UIAlertView();
            al.message = "保存成功";
            al.addButtonWithTitle("OK");
            al.show();
            
        }
    }

    //创建删除方法
    func delData(){
        T100.text = "";
        L100.text = "0.0";
        T50.text = "";
        L50.text = "0.0";
        T20.text = "";
        L20.text = "0.0";
        T10.text = "";
        L10.text = "0.0";
        T5.text = "";
        L5.text = "0.0";
        T1.text = "";
        L1.text = "0.0";
        T05.text = "";
        L05.text = "0.0";
        T01.text = "";
        L01.text = "0.0";
        startMoney.text = "";
        Lall.text = "0.0";
        Lcount.text = "0.0";
        Llast.text = "0.0";
        let result = db.execute("delete from MoneyData");
//        print(result);
//        删除成功提示
        if (result != result+1){
            let al = UIAlertView();
            al.message = "删除成功";
            al.addButtonWithTitle("OK");
            al.show();
            
        }
    }
    
    //创建数据库
    func makeSqlite(){
        db = SQLiteDB.sharedInstance();
        db.execute("create table if not exists MoneyData(id integer primary key,count_100 varchar(20),money_100 varchar(20),count_50 varchar(20),money_50 varchar(20),count_20 varchar(20),money_20 varchar(20),count_10 varchar(20),money_10 varchar(20),count_5 varchar(20),money_5 varchar(20),count_1 varchar(20),money_1 varchar(20),count_05 varchar(20),money_05 varchar(20),count_01 varchar(20),money_01 varchar(20),startMoney varchar(20),Lall varchar(20),Lcount varchar(20),Llast varchar(20))");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

