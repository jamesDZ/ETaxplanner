//
//  ViewController.swift
//  TaxPlanner
//
//  Created by Alok_iOS_Broc on 5/17/17.
//  Copyright © 2017 E-SaarTechy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName = UITextField()
    @IBOutlet weak var txtlastName = UITextField()
    @IBOutlet weak var txtmiddleName =  UITextField()
    @IBOutlet weak var txtAddress = UITextField()
    @IBOutlet weak var txtphone = UITextField()
    @IBOutlet weak var txtserviceType = UITextField()
    @IBOutlet weak var txtAdharnumber = UITextField()
    @IBOutlet weak var txtemail = UITextField()
    var dataDict = NSMutableDictionary()

    @IBOutlet weak var data: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Value of items \(txtName?.text) \(txtlastName?.text)")
        
        
        
    }

    @IBAction func SaveData(_ sender: Any) {
        
        dataDict.setObject(((txtName?.text)!), forKey: "name" as NSCopying)
        dataDict.setObject(((txtlastName?.text)!), forKey: "Last name" as NSCopying)
        dataDict.setObject(((txtmiddleName?.text)!), forKey: "Middle name" as NSCopying)
        dataDict.setObject(((txtAddress?.text)!), forKey: "Address" as NSCopying)
        dataDict.setObject(((txtphone?.text)!), forKey: "Phone" as NSCopying)
        dataDict.setObject(((txtserviceType?.text)!), forKey: "Service Type" as NSCopying)
        dataDict.setObject(((txtAdharnumber?.text)!), forKey: "Adhar Number" as NSCopying)
        dataDict.setObject(((txtemail?.text)!), forKey: "email" as NSCopying)

        print("Values in Dict \(dataDict)")
        performSegue(withIdentifier: "TaxtoUploadSegue", sender: self)
        //        data.text = txtName?.text
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TaxtoUploadSegue"{
            let vc = segue.destination as! UploadViewController
            vc.dataValDict = dataDict
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

