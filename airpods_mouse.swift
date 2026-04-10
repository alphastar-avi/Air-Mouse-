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



        // Smooth motion
        lastX = lastX * (1 - smoothing) + targetX * smoothing
        lastY = lastY * (1 - smoothing) + targetY * smoothing


        // Move cursor
        let newX = loc.x + lastX
        let newY = loc.y + lastY
        CGWarpMouseCursorPosition(CGPoint(x: newX, y: newY))


    }

    RunLoop.main.run()
} else {
    print("No headphone motion data available.")
}

