//
//  ProfileImage.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 3/9/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {
        Image("corgi")
            .resizable()
                .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}

