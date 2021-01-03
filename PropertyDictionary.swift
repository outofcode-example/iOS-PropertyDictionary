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

    subscript(dynamicMember string: String) -> Any? {
        return properties[string]
    }
}
