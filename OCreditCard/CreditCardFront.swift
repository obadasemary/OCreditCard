//
//  CreditCardFront.swift
//  OCreditCard
//
//  Created by Abdelrahman Mohamed on 9.10.2020.
//

import SwiftUI

struct CreditCardFront: View {
    
    // MARK: - PROPERTIES
    
    let name: String
    let expires: String
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("VISA")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Text("**** **** **** 2578")
                .foregroundColor(.white)
                .font(.system(size: 32))
            
            Spacer()
            
            HStack {
                
                VStack(alignment: .leading) {
                    Text("CARD HOLDER")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Text(name)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                VStack {
                    
                    Text("EXPIRES")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Text(expires)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(width: 300, height: 200, alignment: .center)
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomLeading)
        )
        .cornerRadius(10)
    }
}

// MARK: - PREVIEW

struct CreditCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardFront(name: "ABDELRAHMAN MOHAMED", expires: "07/25")
    }
}
