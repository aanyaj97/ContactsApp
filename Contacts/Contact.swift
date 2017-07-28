//
//  Contact.swift
//  Contacts
//
//  Created by Aanya Jhaveri on 7/28/17.
//  Copyright © 2017 Aanya Jhaveri. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var name: String?
    var phoneNumber: String?
    
    init(name: String? = nil, phoneNumber: String? = nil){
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    }
    
}
