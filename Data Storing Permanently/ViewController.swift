//
//  ViewController.swift
//  Data Storing Permanently
//
//  Created by Teacher on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strPhone = ""
    
    
    
    @IBOutlet weak var showPhoneLabel: UILabel!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        //Get Value From TextField
        strPhone = phoneTextField.text!
        print("strPhone ==> \(strPhone)")
        
        //Save to Permanently
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        if let myPermanent = strPermanentPhone as? String {
            print("Result from Permanent ==> \(myPermanent)")
            showPhoneLabel.text = myPermanent
        }
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

