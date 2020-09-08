//
//  ViewController.swift
//  count
//
//  Created by 古田翔太郎 on 2020/09/09.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        color()
    }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        color()
    }
    
    @IBAction func mult(){
        number = number * 2
        label.text = String(number)
        color()
    }
    
    @IBAction func div(){
        number = number / 2
        label.text = String(number)
        color()
    }
    
    @IBAction func AllClear(){
        number = 0
        label.text = String(number)
        color()
    }
    
    @IBAction func color(){
        if(number >= 10){
            label.textColor = UIColor.red
        }else if(number <= -10){
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }
}

