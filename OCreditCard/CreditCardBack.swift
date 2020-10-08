//
//  CreditCardBack.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct CreditCardBack: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Text("")
                .foregroundColor(.white)
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
        CreditCardBack()
    }
}
