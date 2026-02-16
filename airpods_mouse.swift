import Foundation
import CoreMotion
import AppKit

let manager = CMHeadphoneMotionManager()
let factor = 10.0 // lower sensitivity
var lastX: CGFloat = 0
var lastY: CGFloat = 0
let smoothing: CGFloat = 0.2 // smaller = smoother

if manager.isDeviceMotionAvailable {
    print("AirPods motion control active. Move slowly now...")

    manager.startDeviceMotionUpdates(to: .main) { motion, _ in
        guard let motion = motion else { return }

        // Get roll (left-right) and pitch (up-down)
        let roll = motion.attitude.roll
        let pitch = motion.attitude.pitch

        // Get current cursor location
        let loc = NSEvent.mouseLocation


    }

    RunLoop.main.run()
} else {
    print("No headphone motion data available.")
}

