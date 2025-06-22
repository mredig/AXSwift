import Cocoa

extension Application {
	public class Window: UIElement, @unchecked Sendable {
		public required init(_ nativeElement: AXUIElement) {
			super.init(nativeElement)
		}

		public convenience init?(_ uiElement: UIElement) {
			guard
				let role = try? uiElement.role(),
				role == .window
			else { return nil }
			self.init(uiElement.element)
		}

		public var isMain: Bool {
			do {
				return try attributeBool(.main)
			} catch {
				return false
			}
		}

		public var isFocused: Bool {
			do {
				return try attributeBool(.focused)
			} catch {
				return false
			}
		}

		public var isMinimized: Bool {
			do {
				return try attributeBool(.minimized)
			} catch {
				return false
			}
		}

		public var isModal: Bool {
			do {
				return try attributeBool(.modal)
			} catch {
				return false
			}
		}

		public var isFullScreen: Bool {
			do {
				return try attributeBool(.fullScreen)
			} catch {
				return false
			}
		}

		public var closeButton: UIElement? {
			do {
				return try attribute(.closeButton)
			} catch {
				return nil
			}
		}

		public var fullScreenButton: UIElement? {
			do {
				return try attribute(.fullScreenButton)
			} catch {
				return nil
			}
		}

		public var minimizeButton: UIElement? {
			do {
				return try attribute(.minimizeButton)
			} catch {
				return nil
			}
		}

		public var zoomButton: UIElement? {
			do {
				return try attribute(.zoomButton)
			} catch {
				return nil
			}
		}

		public var title: String? {
			try? attribute(.title)
		}

		public var sections: [AnyObject] {
			(try? attribute(Attribute(rawValue: "AXSections"))) ?? []
		}

		public var identifier: String? {
			(try? attribute(.identifier))
		}

		public var activationPoint: CGPoint? {
			(try? attribute(.activationPoint))
		}

		public var position: CGPoint? {
			(try? attribute(.position))
		}

		public var frame: CGRect? {
			(try? attribute(.frame))
		}

		public var size: String? {
			(try? attribute(.size))
		}

		public func getTitle() throws(AXError) -> String {
			let title: String? = try attribute(.title)
			return title ?? "Unknown"
		}

		public func getParent() throws(AXError) -> Application? {
			let parent: UIElement? = try attribute(.parent)
			return parent.flatMap { Application($0.element) }
		}

		public func getSections() throws(AXError) -> [AnyObject] {
			let sections: [AnyObject]? = try attribute(Attribute(rawValue: "AXSections"))
			return sections ?? []
		}

		public func getChildren() throws(AXError) -> [AnyObject] {
			let objects: [AnyObject]? = try attribute(.children)
			return objects ?? []
		}

		public func getChildrenInNavOrder() throws(AXError) -> [AnyObject] {
			let objects: [AnyObject]? = try attribute(.childrenInNavigationOrder)
			return objects ?? []
		}

		public func getProxy() throws(AXError) -> AnyObject? {
			let object: AnyObject? = try attribute(.proxy)
			return object
		}
	}
}
