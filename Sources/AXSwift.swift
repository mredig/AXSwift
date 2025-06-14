import Cocoa

@discardableResult
public func checkIsProcessTrusted(prompt: Bool = false) -> Bool {
    UIElement.isProcessTrusted(withPrompt: prompt)
}
