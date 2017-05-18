//
//  ViewController.swift
//  TaxPlanner
//
//  Created by Alok_iOS_Broc on 5/17/17.
//  Copyright © 2017 E-SaarTechy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtlastName: UITextField!
    @IBOutlet weak var txtmiddleName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtphone: UITextField!
    @IBOutlet weak var txtserviceType: UITextField!
    @IBOutlet weak var txtAdharnumber: UITextField!
    @IBOutlet weak var txtemail: UITextField!

    @IBOutlet weak var data: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func SaveData(_ sender: Any) {
        
        data.text = txtName.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

