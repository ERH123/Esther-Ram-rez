//
//  ViewController.swift
//  NeoMuralismo
//
//  Created by CDAM08 on 29/01/20.
//  Copyright © 2020 CDAM08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hi there im here")
        // Do any additional setup after loading the view.
    }

    @IBAction func send(_ sender: Any) {
        if user.text == "Esther" && password.text == "1234"
        {
            print("login correct")
            performSegue(withIdentifier: "conexion", sender: nil)
        }
        else {
            performSegue(withIdentifier: "error", sender: nil)
        }
        user.text = ""
        password.text = ""
    }
    
}

