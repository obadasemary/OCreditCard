//
//  CreditCard.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct CreditCard<Content>: View where Content: View {
    
    // MARK: - PROPERTIES
    
    var content: () -> Content
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            content()
        }
    }
}

// MARK: - PREVIEW

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard<CreditCardFront>(content: { CreditCardFront() })
    }
}
