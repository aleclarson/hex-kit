A simple library for converting a [hex triplet](http://en.wikipedia.org/wiki/Web_colors#Hex_triplet) (represented by a `String`) into a `UIColor` or `CGColor`!

```Swift
let myUIColor = "#FFFFFF".UIColor
let myCGColor = "#FFFFFF".CGColor
```

Specifying the color's `alpha` is very simple.

```Swift
let myUIColor = "#FFFFFF".UIColor(0.5)
```

Abbreviations for colors are allowed and typing a hash `#` is optional. 

Here are the supported formats:

```Swift
"#123456"

"123456"

"#123" // Represents "#112233"

"123"

"#12" // Represents "#121212"

"12"
```

Just add the `Hexes.swift` file to your project, and you're good to go! Enjoy!
