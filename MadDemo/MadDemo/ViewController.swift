//
//  ViewController.swift
//  MadDemo
//
//  Created by Eddie Etheridge on 9/3/18.
//  Copyright © 2018 Eddie Etheridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "Goodbye!"
        if textField.text == ""{
            textField.text = "Hello From Eddie!"
        }
            textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello From Eddie!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    
    }
}

