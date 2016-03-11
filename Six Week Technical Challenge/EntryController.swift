//
//  EntryController.swift
//  Six Week Technical Challenge
//
//  Created by Aaron Eliason on 3/11/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class EntryController {
    
    private let entriesKey = "entries"
    
    var names: [NameEntries]
    
    static let sharedController = EntryController()
    
    init () {
        self.names = []
        self.loadFromPersistentStorage()
    }
    
    func addName (name: NameEntries) {
        names.append(name)
        self.saveToPersistentStorage()
    }
    
    func removeName (name: NameEntries) {
        if let nameIndex = names.indexOf(name) {
            names.removeAtIndex(nameIndex)
        }
    }
    
    func loadFromPersistentStorage() {
        let entryDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entriesKey) as? [Dictionary<String, AnyObject>]
        if let entryDictionaries = entryDictionariesFromDefaults {
            self.names = entryDictionaries.map({NameEntries(dictionary: $0)!})
        }
    }
    
    func saveToPersistentStorage() {
        let entryDictionaries = self.names.map({$0.dictionaryCopy()})
        
        NSUserDefaults.standardUserDefaults().setObject(entryDictionaries, forKey: entriesKey)
    }
}