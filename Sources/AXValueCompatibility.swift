import Cocoa

public protocol AXValueCompatibility {}

extension AXValueCompatibility {
	func pack() -> AnyObject {
		switch self {
		case let val as UIElement:
			return val.element
		case var val as CFRange:
			return AXValueCreate(AXValueType(rawValue: kAXValueCFRangeType)!, &val)!
		case var val as CGPoint:
			return AXValueCreate(AXValueType(rawValue: kAXValueCGPointType)!, &val)!
		case var val as CGRect:
			return AXValueCreate(AXValueType(rawValue: kAXValueCGRectType)!, &val)!
		case var val as CGSize:
			return AXValueCreate(AXValueType(rawValue: kAXValueCGSizeType)!, &val)!
		default:
			return self as AnyObject // must be an object to pass to AX
		}
	}
}

extension UIElement: AXValueCompatibility {}
extension CFRange: AXValueCompatibility {}
extension CGPoint: AXValueCompatibility {}
extension CGRect: AXValueCompatibility {}
extension CGSize: AXValueCompatibility {}
