//
//  NameEntries.swift
//  Six Week Technical Challenge
//
//  Created by Aaron Eliason on 3/11/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class NameEntries: Equatable {
    private let nameOfPersonKey = "nameOfPerson"
    
    var nameOfPerson: String
    
    init(nameOfPerson: String) {
        self.nameOfPerson = nameOfPerson
    }
    
    init?(dictionary: Dictionary<String, AnyObject>) {
        guard let nameOfPerson = dictionary[nameOfPersonKey] as? String else {
            
            self.nameOfPerson = String()
            
            return nil
    }
        self.nameOfPerson = nameOfPerson
}

    func dictionaryCopy() -> Dictionary<String, AnyObject> {
        let dictionary = [
            nameOfPerson : self.nameOfPerson
        
        ]
        
        return dictionary
    }
}

func ==(lhs: NameEntries, rhs: NameEntries) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}