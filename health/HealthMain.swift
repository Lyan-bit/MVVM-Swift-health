              
              
import SwiftUI

@main 
struct healthMain : App {

	var body: some Scene {
	        WindowGroup {
	            ContentView(model: ModelFacade.getInstance())
	        }
	    }
	} 
