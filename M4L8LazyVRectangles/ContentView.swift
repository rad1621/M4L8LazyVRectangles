//
//  ContentView.swift
//  M4L8LazyVRectangles
//
//  Created by Richard Dietz on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack (alignment: .center, spacing: 10) {
                
                ForEach(1..<20) { index in
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(RadialGradient(
                                gradient: Gradient(colors: [.blue, .green]),
                                center: UnitPoint(x: 0.5, y: 0.5),
                                startRadius: 50,
                                endRadius: 150
                            ))
                            .frame(width: 375, height: 200, alignment: .center)
                            .cornerRadius(20)
                        
                        Text("\(index)")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                }
                
            }
            
        }.padding(.horizontal, 10)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
