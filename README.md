# iOS-PropertyDictionary
Using dictionary a like property.

# Cool
```
let dictionary: [String: Any] = [
    "int": 1, "string": "abc", "bool": true
]
        
let property = PropertyDictionary(dictionary)
let int = property.int?.intValue
let string = property.string
let bool = property.bool?.boolValue
        
print(int, string, bool)
```
