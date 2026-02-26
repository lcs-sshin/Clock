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
                ExtractedView(
                    timeZoneOffset: "+0",
                    city: "Ottawa",
                    time: "6:35",
                    amOrPm: "AM"
                )
                //Vancouver
                ExtractedView(
                    timeZoneOffset: "-3",
                    city: "Vancouver",
                    time: "3:35",
                    amOrPm: "AM"
                )
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


#Preview {
    LandingView()
}

struct ExtractedView: View {
    
    //Mark: Stored properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    
    //Mark:Computed property(displays user interface using values received into the stored properties)
    var body: some View {
        HStack {
            VStack {
                Text("Today, +0HRS")
                Text("Ottawa")
                    .font (.system(.largeTitle, design: .default, weight: .thin))
            }
            Spacer()
            //right side
            Text("6:35")
                .font(.system(size:64.0, weight: .thin, design: .default))
            Text("AM")
                .font (.system(.largeTitle, design: .default, weight: .thin))
        }
    }
    
}
