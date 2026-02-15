import Foundation
import CoreMotion

let manager = CMHeadphoneMotionManager()

if manager.isDeviceMotionAvailable {
    
    manager.startDeviceMotionUpdates(to: .main) { motion, _ in
        if let motion = motion {
            print("Roll: \(motion.attitude.roll), Pitch: \(motion.attitude.pitch), Yaw: \(motion.attitude.yaw)")
            
        }
    }
    RunLoop.main.run()
} else {
    print("No headphone motion data available.")
}

