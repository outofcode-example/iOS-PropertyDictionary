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
        guard let value = properties[string] else { return nil }
        return String(describing: value)
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
