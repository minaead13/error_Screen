//
//  ContentView.swift
//  error_screen
//
//  Created by Mina on 04/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image(uiImage: UIImage(named: "1")!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 30){
                Text("Oops!...")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Text("Something wrong with your \nconnection, please try \nagain")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.7)
                Button(action: {
                    
                }) {
                    Text("Retry".uppercased())
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .padding(.horizontal, 30)
                        .background(Capsule().foregroundColor(.white))
                }
            }
            .padding(.horizontal,70)
            .padding(.bottom, UIScreen.main.bounds.height * 0.1) // 10% of our total weight
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
