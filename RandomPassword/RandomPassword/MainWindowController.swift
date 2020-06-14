//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Arun Sivakumar on 14/6/20.
//  Copyright © 2020 Arun Sivakumar. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    override var windowNibName: NSNib.Name? {
        return "MainWindowController"
    }
    
    @IBAction func generatePAssword(_ sender: NSButton) {
        let length = 8
        let password = generateRandomString(length: length)
        
        textField.stringValue = password
    }
    
}
