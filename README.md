#Hexes

Hexes makes it easy to define a `UIColor` or `CGColorRef` with a `String` like `"#000000"`.

```Swift
// Implicit conversion to a UIColor
let view = UIView()
view.backgroundColor = "#000000"

// Implicit conversion to a CGColorRef
let layer = CALayer()
layer.backgroundColor = "#000000"

// Explicit conversion to a UIColor
let color = "#000000".UIColor

// Explicit conversion to a UIColor with alpha of 0.5
let color = "#000000".UIColor(0.5)

// Reduce redundancy with these great shortcuts
let color: UIColor = "229762" // Acts like "#229762"
let color: CGColorRef = "123" // Acts like "#123123"
let color: UIColor = "00" // Acts like "#000000"
```

Enjoy!
