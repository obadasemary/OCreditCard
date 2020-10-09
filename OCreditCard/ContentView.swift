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
    
    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            CreditCard {
                
                VStack {
                    Group {
                        if flipped {
                            CreditCardBack(cvv: cvv)
                        } else {
                            CreditCardFront(name: name, expires: expires)
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
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
            
            TextField("Expiration", text: $expires)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
            
            TextField("CVV", text: $cvv) { (editingChanged) in
                withAnimation {
                    
                    degrees += 180
                    flipped.toggle()
                }
            } onCommit: {
                
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding([.top, .leading, .trailing])

            
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
