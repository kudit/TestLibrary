// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI

public extension String {
    static var testLibrary: String {
        "The test library \(String(describing: Bundle.module)) exists!"
    }
}

@available(iOS 13.0, *)
public extension Image {
    static var testImage = Image("test", bundle: Bundle.module)
}

public class TestLibrary {
    var name = "TEST"
    // This is here so we can pull bundle module
    public init() {
        
    }
}

public extension Bundle {
    static var testBundleModule = Bundle.module
    static var testLibrary = Bundle(for: TestLibrary.self)
}
