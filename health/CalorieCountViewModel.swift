	                  
import Foundation
import SwiftUI


class CalorieCountViewModel : ObservableObject {
		                      
	static var instance : CalorieCountViewModel? = nil

	static func getInstance() -> CalorieCountViewModel {
		if instance == nil
	     { instance = CalorieCountViewModel()
	        }
	    return instance! }
	                          
	init() { 
		// init
	}
	          
func calorieCount (x: CalorieCountVO) -> Double {
	      var result = 0.0

 let exercise: String  = x.getExercise()
 let times: Double  = x.getTimes()
var factor: Double
  factor  = 1.0
if exercise == "walking" {
	    factor  = 100.0
} else {
      if exercise == "running" {
      	    factor  = 300.0
      } else {
            if exercise == "jogging" {
            	    factor  = 200.0
            } else {
                    factor  = 250.0
            }
      }
}
  result  = factor * (times / 60.0)
	if x.isCalorieCountError()
	   {   return result }
	   
	return result
        
    }
       
	func cancelCalorieCount() {
		//cancel function
	}
	          


	}
