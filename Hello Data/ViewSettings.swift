//
//  ViewMessages.swift
//  Hello Data
//
//  Created by Kevin Bluer on 4/23/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import Foundation
import UIKit
import Parse

class ViewSettings: UIViewController {
    @IBOutlet weak var lblWelcome: UILabel!

    override func viewDidLoad() {
        
        var vista: UIView = BackgroundView(frame: CGRectMake(0,0,view.bounds.width,view.bounds.height))
        view.insertSubview(vista, atIndex: 0)
        
        var currentUser = PFUser.currentUser()
        
        var email = currentUser?.email as String?
        var name:String? = currentUser?.objectForKey("Name") as? String
        
        lblWelcome.text = lblWelcome.text! + " " + name!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}