//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Farasat's_MacBook_Pro on 20/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Created State varaibles
    @State private var message = ""
    @State private var imageName = ""

    
    var body: some View {

        VStack {
            Spacer()

            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.gray)
            Spacer()
            HStack{
                Button("Press Me!") {
                    print("button oressed")
                    switch message {
                    case "You are Awesome!":
                        message = "You are Great!"
                        imageName = "hand.thumbsup"
                        break
                    case "You are Great!":
                        message = "You are Awesome!"
                        imageName = "sun.max.fill"
                        break
                    default:
                        print("empty so go with default values")
                        message = "You are Awesome!"
                        imageName = "sun.max.fill"

                    }

                }
                .buttonStyle(.bordered)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
                
            }
        }

        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
