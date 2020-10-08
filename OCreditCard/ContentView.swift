//
//  ContentView.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        
        CreditCard {
            
            VStack {
                Group {
                    if flipped {
                        CreditCardBack()
                    } else {
                        CreditCardFront()
                    }
                }
            }
            .rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                anchorZ: 0.0,
                perspective: 1.0
            )
        }
        .onTapGesture(count: 1, perform: {
            
            withAnimation {
                
                degrees += 180
                flipped.toggle()
            }
        })
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
