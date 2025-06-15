import Cocoa
import AXSwift

class AppDelegate: NSObject, NSApplicationDelegate {

    var observer: Observer!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let app = Application.allForBundleID("com.apple.finder").first!
        guard UIElement.isProcessTrusted(withPrompt: true) else {
            NSLog("No accessibility API permission, exiting")
            NSRunningApplication.current.terminate()
            return
        }

        do {
            try startWatcher(app)
        } catch let error {
            NSLog("Error: Could not watch app [\(app)]: \(error)")
            abort()
        }
    }

    private class Sendly<T>: @unchecked Sendable {
        private let lock = NSLock()
        private var _value: T
        var value: T {
            get { lock.withLock { _value } }
            set { lock.withLock { _value = newValue } }
        }

        init(_ value: T) {
            lock.lock()
            defer { lock.unlock() }
            self._value = value
        }
    }

    func startWatcher(_ app: Application) throws {
        let updated = Sendly(false)
        observer = app.createObserver { (observer: Observer, element: UIElement, event: UIElement.AXNotification, info: [String: AnyObject]?) in
            var elementDesc: String!
            if let role = try? element.role()!, role == .window {
                elementDesc = "\(element) \"\(try! (element.attribute(.title) as String?)!)\""
            } else {
                elementDesc = "\(element)"
            }
            print("\(event) on \(String(describing: elementDesc)); info: \(info ?? [:])")

			do {
				switch event {
					// Watch events on new windows
				case .windowCreated:
					try observer.addNotification(.uiElementDestroyed, forElement: element)
					try observer.addNotification(.moved, forElement: element)
				case .uiElementDestroyed:
					try observer.removeNotification(.uiElementDestroyed, forElement: element)
				default: break
				}
			} catch let error {
				NSLog("Error: Could not watch [\(element)]: \(error)")
			}

            // Group simultaneous events together with --- lines
            if !updated.value {
                updated.value = true
                // Set this code to run after the current run loop, which is dispatching all notifications.
                DispatchQueue.main.async {
                    print("---")
                    updated.value = false
                }
            }
        }

        try observer.addNotification(.windowCreated, forElement: app)
        try observer.addNotification(.mainWindowChanged, forElement: app)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
