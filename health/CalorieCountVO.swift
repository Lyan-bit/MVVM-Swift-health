
import Foundation

class CalorieCountVO {
  var exercise: String = "" 
  var times: Double = 0.0

  static var defaultInstance : CalorieCountVO? = nil
  var errorList : [String] = [String]()

  var result : Double = 0.0

  init() {
  	//init
  }
  
  static func defaultCalorieCountVO() -> CalorieCountVO
  { if defaultInstance == nil
    { defaultInstance = CalorieCountVO() }
    return defaultInstance!
  }

  init(exercisex: String, timesx: Double)  {
  exercise = exercisex
  times = timesx
  }

  func toString() -> String
  	{ return "" + "exercise = " + exercise + "times = " + String(times) }

  func getExercise() -> String
  	{ return exercise }
	
  func setExercise(x : String)
	{ exercise = x }
	  
  func getTimes() -> Double
  	{ return times }
	
  func setTimes(x : Double)
	{ times = x }
	  
  func setResult (x: Double) {
    result = x }
          
  func resetData()
  	{ errorList = [String]() }

  func isCalorieCountError() -> Bool
  	{ resetData()
  


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

