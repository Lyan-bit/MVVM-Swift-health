              
              
              
import SwiftUI

struct ContentView : View {
	
	@ObservedObject var calorieCountViewModel : CalorieCountViewModel
    @ObservedObject var computeBMIViewModel : ComputeBMIViewModel
	                                       
	var body: some View {
		TabView {
            ComputeBMIScreen (model: computeBMIViewModel).tabItem {
                        Image(systemName: "1.square.fill")
	                    Text("ComputeBMI")} 
            CalorieCountScreen (model: calorieCountViewModel).tabItem {
                        Image(systemName: "2.square.fill")
	                    Text("CalorieCount")} 
				}.font(.headline)
		}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(calorieCountViewModel: CalorieCountViewModel.getInstance(), computeBMIViewModel: ComputeBMIViewModel.getInstance())
    }
}

