// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI

public extension String {
    static var testLibrary: String {
        "The test library \(String(describing: Bundle.module)) exists!"
    }
}

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

public struct TestImageView: View {
    public init() {}
    public var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
            Image(systemName: "test")
                .foregroundStyle(.green)
            Image("test")
                .foregroundStyle(.green)
            Image("test", bundle: Bundle.module)
                .foregroundColor(.mint)
            Image("test", bundle: Bundle(for: TestLibrary.self))
                .foregroundColor(.pink)
            Image("test", bundle: .testLibrary)
                .foregroundStyle(.blue)
            Image("test", bundle: .testBundleModule)
                .foregroundStyle(.orange)
            Image.testImage
                .foregroundStyle(.purple)
        }
        .font(.largeTitle)
    }
}

#Preview {
    TestImageView()
}
