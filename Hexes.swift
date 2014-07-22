
import UIKit

extension String {

  public var UIColor: UIKit.UIColor { return self as UIKit.UIColor }
  
  public func UIColor (alpha: CGFloat) -> UIKit.UIColor {
    var hex = self
    
    // Strip leading "#" if it exists
    if hex.hasPrefix("#") {
      hex = hex.substringFromIndex(hex.startIndex.successor())
    }
    
    let length = countElements(hex)
    
    // Turn "ff" into "ffffff"
    if length == 2 {
      hex = repeat(hex, 3)
    }
    
    // Turn "123" into "123123"
    else if length == 3 {
      hex = repeat(hex, 2)
    }
    
    assert(countElements(hex) == 6, "Invalid hex value")
    
    var r: UInt32 = 0
    var g: UInt32 = 0
    var b: UInt32 = 0
    
    NSScanner(string: "0x" + hex[0...1]).scanHexInt(&r)
    NSScanner(string: "0x" + hex[2...3]).scanHexInt(&g)
    NSScanner(string: "0x" + hex[4...5]).scanHexInt(&b)
    
    let red = CGFloat(Int(r)) / CGFloat(255.0)
    let green = CGFloat(Int(g)) / CGFloat(255.0)
    let blue = CGFloat(Int(b)) / CGFloat(255.0)
    
    return UIKit.UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }

  public func __conversion () -> UIKit.UIColor {
    return self.UIColor(1)
  }
  
  public func __conversion () -> CGColorRef {
    return (self as UIKit.UIColor).CGColor
  }
  
  private subscript (r: Range<Int>) -> String {
    return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
  }
}

private func repeat (string: String, count: Int) -> String {
  return "".stringByPaddingToLength(countElements(string) * count, withString: string, startingAtIndex:0)
}
