//
//  ContentView.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 3/9/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Map()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            
            ProfileImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .center) {
                Text("Mr. Corgi")
                    .font(.title)
                    .padding()
                Text("Redwood City, CA")
                    .font(.subheadline)
                Text("Enjoys Cherrios")
                    .font(.subheadline)
                    .italic()
//
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
