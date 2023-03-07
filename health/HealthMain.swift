              
              
import SwiftUI

@main 
struct healthMain : App {

	var body: some Scene {
	        WindowGroup {
                ContentView(calorieCountViewModel: CalorieCountViewModel.getInstance(), computeBMIViewModel: ComputeBMIViewModel.getInstance())
	        }
	    }
	} 
