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
                //Ottawa
                ExtractedView()
                //Vancouber
                ExtractedView()
            }
            .navigationTitle("World Clock")
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

struct ExtractedView: View {
    
    var body: some View {
        HStack{
            //left side
            VStack{
                Text ("Today, +0HRS")
                Text ("Ottawa")
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            //Right side
            Text("6:35")
                .font(.system(size:64.0, weight: .thin, design: .default))
            Text("AM")
                .font (.system(.largeTitle, design: .default, weight: .thin))
        }
        
    }
        
}


#Preview {
    LandingView()
}
