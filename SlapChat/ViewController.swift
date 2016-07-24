//
//  ViewController.swift
//  SlapChat
//
//  Created by Christopher Webb-Orenstein on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dataStore: DataStore = DataStore()

    @IBOutlet weak var messageField: UITextField! {
        didSet {
            messageField.layer.borderWidth = 1.5
            //messageField.
            messageField.layer.cornerRadius = 2.2
            //messageField.layer.borderColor = UIColor(red:0.35, green:0.78, blue:0.98, alpha:1.0).CGColo
        }
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        let newMessage = Message()
        newMessage.content = messageField.text
        newMessage.createdAt = NSDate()
        dataStore.messages.append(newMessage)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
//    override func viewWillAppear(animated: Bool) {
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
