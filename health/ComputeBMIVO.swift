
import Foundation

class ComputeBMIVO {
  var heights: Double = 0.0
  var weight: Double = 0.0

  static var defaultInstance : ComputeBMIVO? = nil
  var errorList : [String] = [String]()

  var result : Double = 0.0

  init() {
  	//init
  }
  
  static func defaultComputeBMIVO() -> ComputeBMIVO
  { if defaultInstance == nil
    { defaultInstance = ComputeBMIVO() }
    return defaultInstance!
  }

  init(heightsx: Double, weightx: Double)  {
  heights = heightsx
  weight = weightx
  }

  func toString() -> String
  	{ return "" + "heights = " + String(heights) + "weight = " + String(weight) }

  func getHeights() -> Double
  	{ return heights }
	
  func setHeights(x : Double)
	{ heights = x }
	  
  func getWeight() -> Double
  	{ return weight }
	
  func setWeight(x : Double)
	{ weight = x }
	  
  func setResult (x: Double) {
    result = x }
          
  func resetData()
  	{ errorList = [String]() }

  func isComputeBMIError() -> Bool
  	{ resetData()
  

	if heights > 0.0 { 
	//check
}
	else { errorList.append("ComputeBMI: heights > 0.0") }
	if weight > 0.0 { 
	//check
}
	else { errorList.append("ComputeBMI: weight > 0.0") }

    if errorList.count > 0
    { return true }
    
    return false
  }

  func errors() -> String
  { var res : String = ""
    for (_,x) in errorList.enumerated()
    { res = res + x + ", " }
    return res
  }

}

