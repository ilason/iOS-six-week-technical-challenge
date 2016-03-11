//
//  EntryController.swift
//  Six Week Technical Challenge
//
//  Created by Aaron Eliason on 3/11/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class EntryController {
    var names: [NameEntries]
    
    init () {
        self.names = []
        
    }
    
    func addName (name: NameEntries) {
        names.append(name)
        
        
    }
    
    func removeName (name: NameEntries) {
        if let nameIndex = names.indexOf(name) {
            names.removeAtIndex(nameIndex)
        }
    }
}