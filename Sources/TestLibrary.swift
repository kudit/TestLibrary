// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  Created by Ben Ku on 3/25/24.
//

import Foundation
import Device

public struct TestLibrary {
    public static var version = "1.5.2"
    
    public static var description: String {
        return "Tests Library v\(TestLibrary.version)\nDevice v\(Device.version)"
    }
}
