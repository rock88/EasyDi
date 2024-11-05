import Foundation
import Dependencies

public extension NSRecursiveLock {
    @available(iOS, deprecated: 9999, message: "For EasyDi only")
    static func extractFromDependencies() -> NSRecursiveLock {
        if let values = extractCachedValues(), let lock = extractLock(values) {
            return lock
        }

        #if DEBUG
        fatalError("Failed to extract lock from Dependencies")
        #else
        return NSRecursiveLock()
        #endif
    }
}

private extension NSRecursiveLock {
    static func extractCachedValues() -> Any? {
        Mirror(reflecting: DependencyValues._current).children.first { $0.label == "cachedValues" }?.value
    }

    static func extractLock(_ value: Any) -> NSRecursiveLock? {
        Mirror(reflecting: value).children.first { $0.label == "lock" }?.value as? NSRecursiveLock
    }
}
