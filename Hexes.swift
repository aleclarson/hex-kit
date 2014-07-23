
import UIKit

extension String {

  public var CGColor: CGColorRef {
    return self.CGColor(1)
  }

  public var UIColor: UIKit.UIColor {
    return self.UIColor(1)
  }
  
  public func CGColor (alpha: CGFloat) -> CGColorRef {
    return self.UIColor(alpha).CGColor
  }
  
  public func UIColor (alpha: CGFloat) -> UIKit.UIColor {
    var hex = self
    
    // Strip leading "#" if it exists
    if hex.hasPrefix("#") {
      hex = hex.substringFromIndex(hex.startIndex.successor())
    }
    
    let length = countElements(hex)
    
    // Turn "f" into "ffffff"
    if length == 1 {
      hex = repeat(hex, 6)
    }
    
    // Turn "ff" into "ffffff"
    else if length == 2 {
      hex = repeat(hex, 3)
    }
    
    // Turn "123" into "112233"
    else if length == 3 {
      hex = repeat(hex[0], 2) + repeat(hex[1], 2) + repeat(hex[2], 2)
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
    return self.CGColor(1)
  }
  
  private subscript (i: Int) -> String {
    return String(Array(self)[i])
  }
  
  private subscript (r: Range<Int>) -> String {
    return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
  }
}

private func repeat (string: String, count: Int) -> String {
  return "".stringByPaddingToLength(countElements(string) * count, withString: string, startingAtIndex:0)
}
