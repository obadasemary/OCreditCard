//
//  CreditCardBack.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct CreditCardBack: View {
    
    // MARK: - PROPERTIES
    
    let cvv: String
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 20)
                .padding([.top])
            
            Spacer()
            
            HStack {
                Text(cvv)
                    .foregroundColor(.black)
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(5)
                    .background(Color.white)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0),
                        anchor: .center,
                        anchorZ: 0.0,
                        perspective: 1.0
                    )
                
                Spacer()
            }
            .padding()
        }
        .frame(width: 300, height: 200, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.yellow]), startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(10)
    }
}

// MARK: - PREVIEW

struct CreditCardBack_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardBack(cvv: "529")
    }
}
