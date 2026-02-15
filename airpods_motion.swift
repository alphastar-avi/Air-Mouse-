import Foundation
import CoreMotion

let manager = CMHeadphoneMotionManager()


    RunLoop.main.run()
} else {
    print("No headphone motion data available.")
}

