//
//  ViewController.swift
//  Hello Data
//
//  Created by Kevin Bluer on 4/23/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        
        var vista: UIView = BackgroundView(frame: CGRectMake(0,0,view.bounds.width,view.bounds.height))
        view.insertSubview(vista, atIndex: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRegister(sender: AnyObject) {
        
        if (txtEmail.text != "" && txtPassword.text != "" && txtEmail.text != "") {
        
            // create the new user and gather the details
            var user = PFUser()
            user.username = txtEmail.text
            user.password = txtPassword.text
            user.email = txtEmail.text
            user["Name"] = txtName.text
            
            // signup
            user.signUpInBackgroundWithBlock {
                (succeeded, error) -> Void in
                if error == nil {
                    
                    // show a friendly alert
                    var alert = UIAlertController(title: "Welcome", message: "Thanks for registering!", preferredStyle: UIAlertControllerStyle.Alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                    
                    // login the user in
                    PFUser.logInWithUsernameInBackground(self.txtEmail.text, password: self.txtPassword.text) {
                        (user, error) -> Void in
                        if user != nil {
                            // do something? :)
                            
                        } else {
                            
                            // the login failed. display an appropriate response
                        }
                    }
                    
                } else {
                    // the signup failed. display an appropriate response
                }
            }
        }
    }
    
    @IBAction func btnViewSettings(sender: AnyObject) {
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("settings") as! UIViewController, animated: true);
    }
    
    @IBAction func btnViewNotes(sender: AnyObject) {
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("notes") as! UIViewController, animated: true);
    }
    
    @IBAction func unwindFromView(segue: UIStoryboardSegue) {
    }
    
}