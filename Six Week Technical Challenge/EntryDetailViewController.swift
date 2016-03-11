//
//  EntryDetailViewController.swift
//  Six Week Technical Challenge
//
//  Created by Aaron Eliason on 3/11/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    var entry: NameEntries?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addPersonButtonTapped(sender: AnyObject) {
        if let entry = self.entry {
            entry.nameOfPerson = self.nameTextField.text!
        } else {
            let newEntry = NameEntries(nameOfPerson: self.nameTextField.text!)
            EntryController.sharedController.addName(newEntry)
            self.entry = newEntry
        }
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    func updateWithEntry(name: NameEntries) {
        self.entry = name
        self.nameTextField.text = name.nameOfPerson
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
 
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
