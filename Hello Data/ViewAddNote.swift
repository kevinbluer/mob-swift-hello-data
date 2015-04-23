//
//  ViewAddNote.swift
//  Hello Data
//
//  Created by Kevin Bluer on 4/23/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import Foundation
import UIKit
import Parse

class ViewAddNote: UIViewController {
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        var vista: UIView = BackgroundView(frame: CGRectMake(0,0,view.bounds.width,view.bounds.height))
        view.insertSubview(vista, atIndex: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}