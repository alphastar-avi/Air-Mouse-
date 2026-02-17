import Foundation
import CoreMotion

let manager = CMHeadphoneMotionManager()

if manager.isDeviceMotionAvailable {
    

    }
    RunLoop.main.run()
} else {
    print("No headphone motion data available.")
}

