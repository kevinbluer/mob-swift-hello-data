//
//  ViewAddMessage.swift
//  Hello Data
//
//  Created by Kevin Bluer on 4/23/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import Foundation
import UIKit
import Parse

class ViewNotes: UIViewController {
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        var vista: UIView = BackgroundView(frame: CGRectMake(0,0,view.bounds.width,view.bounds.height))
        view.insertSubview(vista, atIndex: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddNote(sender: AnyObject) {
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("addNote") as! UIViewController, animated: true);
    }
}

// TODO from there add in a chat system (check out the cool lib for this)