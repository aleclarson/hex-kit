#Hexes

Hexes is a tiny `String` extension written in Swift. With Hexes, it's **super easy** to convert a hex color code `#000000` into a `UIColor` or a `CGColorRef`!

**Why is Hexes the best option?** Implicit and explicit conversion. Abbreviated hex codes. Define the color's alpha.

###Implicit conversion

Implicit conversion lets you set the `backgroundColor` of a `UIView` or a `CALayer` with a simple, little `String`!

```Swift
myView.backgroundColor = "0" // black
myLayer.backgroundColor = "0"
```

Implicit conversion works with any variable with the type of `UIColor` or `CGColorRef`.

```Swift
let color: UIColor = "f" // white
let color: CGColorRef = "f"
```

###Abbreviations

Reduce redundancy with abbreviated hex codes! Here are the formats that Hexes supports...

```Swift
"#01b471"
"01b471"
"#123" // Acts like "#112233"
"123"
"#00" // Acts like "#000000"
"00"
```

###Explicit conversion

For those who want to be clear of their code's intentions, there is explicit conversion!

```Swift
let color = "f".UIColor
let color = "f".CGColor
```

Sometimes, it's necessary to set the color's `alpha`. Explicit conversion makes it possible!

```Swift
let color = "f".UIColor(0.5)
let color = "f".CGColor(0.5)
```

###Installation

Simply add the `Hexes.swift` file to your project, and you're ready to go!

Enjoy!
