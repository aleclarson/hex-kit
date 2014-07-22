#Hexes

Hexes is a tiny `String` extension written in Swift. With Hexes, it's **super easy** to convert a hex color code `#000000` into a `UIColor` or a `CGColorRef`!

**Why is Hexes the best option?** Hexes allows implicit and explicit conversion, as well as abbreviated hex codes! Don't worry; this will all make sense in a minute!

###Implicit conversion

Implicit conversion lets you set the `backgroundColor` of a `UIView` or a `CALayer` with a simple, little `String`!

```Swift
myView.backgroundColor = "00" // black
myLayer.backgroundColor = "00"
```

Implicit conversion works with any variable with the type of `UIColor` or `CGColorRef`.

```Swift
let color: UIColor = "ff" // white
let color: CGColorRef = "ff"
```

###Abbreviations

Reduce redundancy with abbreviated hex codes! Here are the formats that Hexes supports...

```Swift
"#01b471"
"01b471"
"#123" // Acts like "#123123"
"123"
"#00" // Acts like "#000000"
"00"
```

###Explicit conversion

For those who want to be clear of their code's intentions, there is explicit conversion!

```Swift
let color = "ff".UIColor
let color = "ff".CGColor
```

Sometimes, you need to set the `UIColor`'s opacity. Explicit conversion is here for you!

```Swift
let color = "ff".UIColor(0.5)
let color = "ff".CGColor(0.5)
```

###Installation

Simply add the `Hexes.swift` file to your project, and you're ready to go!

Enjoy!
