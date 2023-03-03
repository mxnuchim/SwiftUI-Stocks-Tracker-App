//
//  HeaderView.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showSheet: Bool
    
    var body: some View { 
            HStack {
                Text("My Stocks")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.darkBlue)
                
                Spacer()
                
                Button(action: {
                    showSheet.toggle()
                }) {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .accentColor(Color.darkBlue)
                        .font(.system(size: 40))
                }
            }
        
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//            .padding()
//    }
//}
