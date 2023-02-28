	                  
import Foundation
import SwiftUI


class ModelFacade : ObservableObject {
		                      
	static var instance : ModelFacade? = nil

	static func getInstance() -> ModelFacade { 
		if instance == nil
	     { instance = ModelFacade() 
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
