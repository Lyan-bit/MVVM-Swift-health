
import Foundation
import SwiftUI


class ComputeBMIViewModel : ObservableObject {
        
static var instance : ComputeBMIViewModel? = nil

static func getInstance() -> ComputeBMIViewModel {
if instance == nil
{ instance = ComputeBMIViewModel()
}
return instance! }
        
init() {
// init
}


func computeBMI (x: ComputeBMIVO) -> Double {
var result = 0.0

let heights: Double  = x.getHeights()
let weight: Double  = x.getWeight()
result  = weight / (heights * heights)
if x.isComputeBMIError()
{   return result }

return result

}

func cancelComputeBMI() {
//cancel function
}

}
