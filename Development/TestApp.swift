import SwiftUI
#if canImport(Device)
import Device
#endif

@main
struct TestApp: App {
    init() {
        Device.current.disableIdleTimerWhenPluggedIn()
    }
    var body: some Scene {
        WindowGroup {
            if #available(watchOS 8.0, tvOS 15.0, macOS 12.0, *) {
                VStack {
                    Text("Test Library")
                    Text("Device inclusion v\(Device.version)")
                }
            } else {
                // Fallback on earlier versions
                Text("UI Tests not available on older platforms.  However, framework code should still work.")
            }
        }
    }
}
