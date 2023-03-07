import SwiftUI

struct CalorieCountScreen: View {
	
	@State var calorieCountBean : CalorieCountVO = CalorieCountVO()
	@State var calorieCountResult : Double = 0.0
	
	@ObservedObject var model : CalorieCountViewModel
	
	var body: some View {
	  	NavigationView {
	  		ScrollView {
		VStack {
                   
		       HStack (spacing: 20) {
			  Text("Exercise:").bold()
			  Divider()
			  Picker("Exercise", selection: $calorieCountBean.exercise) {
			  	ForEach( Exercise.allCases, id:\.self) { item in
			  		Text("\(item.rawValue)").tag(item.rawValue)
			  	}                       
			  }.pickerStyle(.menu)
		       }.frame(width: 200, height: 30).border(Color.gray)
	       HStack (spacing: 20) {
	          Text("Times:").bold()
	          TextField("Times:", value: $calorieCountBean.times, format: .number).textFieldStyle(RoundedBorderTextFieldStyle())
	                  .keyboardType(.decimalPad)
	          }.frame(width: 200, height: 30).border(Color.gray)

	       HStack (spacing: 20) {
	           Text("Result:").bold()
	           Text(String(format: "%.2f", calorieCountResult))
	       }.frame(width: 200, height: 60).border(Color.gray) 
	                      
			   HStack (spacing: 20) {
	          Button(action: { 
	          	calorieCountResult = self.model.calorieCount(x: calorieCountBean) 
	          }) { Text("OK")}
	                        
	          Button(action: { self.model.cancelCalorieCount() }) { Text("Cancel") }
	       }.buttonStyle(.bordered)
	           
	}.onAppear() {
		//onAppear
	    }
	  }.navigationTitle("calorieCount")
	}
  }
}

struct CalorieCountScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalorieCountScreen(model: CalorieCountViewModel.getInstance())
    }
}

