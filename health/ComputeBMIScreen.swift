import SwiftUI

struct ComputeBMIScreen: View {
	
	@State var computeBMIBean : ComputeBMIVO = ComputeBMIVO()
	@State var computeBMIResult : Double = 0.0
	
		@State var isShowingAlert2 = false
		@State var isShowingAlert3 = false
	@ObservedObject var model : ModelFacade
	
	var body: some View {
	  	NavigationView {
	  		ScrollView {
		VStack {
                   
	       HStack (spacing: 20) {
	          Text("Heights:").bold()
	          TextField("Heights:", value: $computeBMIBean.heights, format: .number).textFieldStyle(RoundedBorderTextFieldStyle())
	                  .keyboardType(.decimalPad)
	          }.frame(width: 200, height: 30).border(Color.gray)
	       HStack (spacing: 20) {
	          Text("Weight:").bold()
	          TextField("Weight:", value: $computeBMIBean.weight, format: .number).textFieldStyle(RoundedBorderTextFieldStyle())
	                  .keyboardType(.decimalPad)
	          }.frame(width: 200, height: 30).border(Color.gray)

	       HStack (spacing: 20) {
	           Text("Result:").bold()
	           Text(String(format: "%.2f", computeBMIResult))
	       }.frame(width: 200, height: 60).border(Color.gray) 
	                      
			   HStack (spacing: 20) {
	          Button(action: { 
	          	computeBMIResult = self.model.computeBMI(x: computeBMIBean) 
	          	if computeBMIBean.isComputeBMIError() { 
	               isShowingAlert2 = true
	               isShowingAlert3 = true
}
	          }) { Text("OK")}
	                        
	          Button(action: { self.model.cancelComputeBMI() }) { Text("Cancel") }
	       }.buttonStyle(.bordered)
	           
	}.onAppear() {
		//onAppear
	    }
	        .alert("Error", isPresented: $isShowingAlert2) {
	    	Button("Ok", role: .cancel) { 
	    	//ok
	    }
	     } message: { ForEach (computeBMIBean.errorList, id:\.self) { item in Text("\(item)")} }
	        .alert("Error", isPresented: $isShowingAlert3) {
	    	Button("Ok", role: .cancel) { 
	    	//ok
	    }
	     } message: { ForEach (computeBMIBean.errorList, id:\.self) { item in Text("\(item)")} }
	  }.navigationTitle("computeBMI")
	}
  }
}

struct ComputeBMIScreen_Previews: PreviewProvider {
    static var previews: some View {
        ComputeBMIScreen(model: ModelFacade.getInstance())
    }
}

