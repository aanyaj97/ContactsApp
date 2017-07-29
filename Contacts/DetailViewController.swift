//
//  DetailViewController.swift
//  Contacts
//
//  Created by Aanya Jhaveri on 7/28/17.
//  Copyright © 2017 Aanya Jhaveri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!
    var contact: Contact?
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.nameTextField {
            self.contact?.name = textField.text
        } else if textField == self.phoneNumberTextField {
            self.contact?.phoneNumber = textField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameTextField.delegate = self
        self.phoneNumberTextField.delegate = self

        if let contact = self.contact {
            if let name = contact.name {
                self.nameTextField.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                self.phoneNumberTextField.text = phoneNumber
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
