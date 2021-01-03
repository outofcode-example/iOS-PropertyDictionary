//
//  PropertyDictionary.swift
//  iOS-PropertyDictionary
//
//  Created by DH on 2020/12/25.
//

@dynamicMemberLookup
struct PropertyDictionary {
    private let properties: [String : Any]
    
    init(_ dictionary: [String: Any]) {
        properties = dictionary
    }

    subscript(dynamicMember string: String) -> String? {
        if let value = properties[string] {
            return String(describing: value)
        } else {
            return nil
        }
    }
}

extension String {
    var intValue: Int? {
        return Int(self)
    }
    
    var boolValue: Bool? {
        return Bool(self)
    }
    
    var floatValue: Float? {
        return Float(self)
    }
}
