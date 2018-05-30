//
//  ViewController.swift
//  Ronny Calc
//
//  Created by Ronny Kibet on 5/29/18.
//  Copyright © 2018 TeamAppCreative. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var userInputTextField: NSTextField!
    
    @IBOutlet weak var one_1: NSButton!
    
    @IBOutlet weak var two_2: NSButton!
    
    @IBOutlet weak var three_3: NSButton!
    
    @IBOutlet weak var four_4: NSButton!
    
    @IBOutlet weak var five_5: NSButton!
    
    @IBOutlet weak var six_6: NSButton!
    
    @IBOutlet weak var seven_7: NSButton!
    
    @IBOutlet weak var eight_8: NSButton!
    
    @IBOutlet weak var nine_9: NSButton!
    
    @IBOutlet weak var add_btn: NSButton!
 
    @IBOutlet weak var subtract_btn: NSButton!

    @IBOutlet weak var divide_btn: NSButton!
    
    @IBOutlet weak var multiply_btn: NSButton!
    
    @IBOutlet weak var left_parentheses: NSButton!
    
    @IBOutlet weak var right_parentheses: NSButton!
    
    @IBOutlet weak var equals_btn: NSButton!
    
    /**function on button click**/
    func value_on_txt_field(num: String){
        
        if userInputTextField.stringValue != "0" {
            userInputTextField.stringValue = userInputTextField.stringValue + num
        }else{
            userInputTextField.stringValue = num
        }
    }
    
    
    /**C - clear Button Clicked**/
    @IBAction func clear_btn_click(_ sender: Any) {
        userInputTextField.stringValue = "0" //clear
    }
    
    
      /**One Button Clicked**/
    @IBAction func one_btn_click(_ sender: Any) {
        value_on_txt_field(num: "1")
    }
    
    /**two Button Clicked**/
    @IBAction func two_btn_click(_ sender: Any) {
        value_on_txt_field(num: "2")
    }
   
    /**three Button Clicked**/
    @IBAction func three_btn_click(_ sender: Any) {
      value_on_txt_field(num: "3")
    }
     /**four Button Clicked**/
    @IBAction func four_btn_click(_ sender: Any) {
        value_on_txt_field(num: "4")
    }
    /**five Button Clicked**/
    @IBAction func five_btn_click(_ sender: Any) {
        value_on_txt_field(num: "5")
    }
    /**six button click**/
    @IBAction func six_btn_click(_ sender: Any) {
        value_on_txt_field(num: "6")
    }
    /**seven button click**/
    @IBAction func seven_btn_click(_ sender: Any) {
        value_on_txt_field(num: "7")
    }
    /**eight button click**/
    @IBAction func eight_btn_click(_ sender: Any) {
        value_on_txt_field(num: "8")
    }
    /**nine button click**/
    @IBAction func nine_btn_click(_ sender: Any) {
         value_on_txt_field(num: "9")
    }
    
    /**Add button click**/
    @IBAction func add_btn_click(_ sender: Any) {
        value_on_txt_field(num: "+")
    }
    /**Subtract button click**/
    @IBAction func subtract_btn_click(_ sender: Any) {
        value_on_txt_field(num: "-")
    }
     /**Divide button click**/
    @IBAction func divide_btn_click(_ sender: Any) {
        value_on_txt_field(num: "/")
    }
    /**Multiply button click **/
    @IBAction func multiply_btn_click(_ sender: Any) {
        value_on_txt_field(num: "*")
    }
    /**Zero button click **/
    @IBAction func zero_btn_click(_ sender: Any) {
         value_on_txt_field(num: "0")
    }
    
    
    /**Perform calculations Button Click**/
    
    @IBAction func equals_btn_click(_ sender: Any) {
        
    
        userInputTextField.stringValue = userInputTextField.stringValue.replacingOccurrences(of: "\"", with: "")        //perform calculations
        
        let exp: NSExpression = NSExpression(format: userInputTextField.stringValue)
        let result: Double = exp.expressionValue(with: nil, context: nil) as! Double // 25.0
        print(result);
        userInputTextField.doubleValue = result
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

