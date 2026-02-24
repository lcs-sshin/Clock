//
//  WorldClockView.swift
//  Clock
//
//  Created by zimmer_h on 2/24/26.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("World Clock")
            }
                    .navigationTitle("World CLock")
                    .toolbar {
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button("Edit") {
                                // Does nothing right now
                            }
                            
                        }
                        
                        ToolbarItem(placement: .primaryAction){
                            Button
                            {
                            }label:{
                                Image(systemName: "plus")
                            }
                        }
                    }
            }
        }
    }


#Preview {
    LandingView()
}
