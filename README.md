# iOS-PropertyDictionary
Using dictionary a like property.

# Cool
let dictionary: [String : Any] = [
    "abc": 1, "a": "abc"
]

let property = PropertyDictionary(dictionary)
print("test:", property.a ?? "nil")
