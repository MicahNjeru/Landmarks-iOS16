//
//  ContentView.swift
//  Landmarks
//
//  Created by Micah Jesse Njeru on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text("Turtle Rock")
                    
                
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("California,")
                        Text("US")
                    }
                }
                .font(.title)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Insert descriptive text here")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
