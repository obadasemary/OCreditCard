//
//  CreditCardFront.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct CreditCardFront: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            Text("")
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 200, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(10)
    }
}

// MARK: - PREVIEW

struct CreditCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardFront()
    }
}
