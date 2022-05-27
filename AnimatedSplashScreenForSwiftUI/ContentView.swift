//
//  ContentView.swift
//  AnimatedSplashScreenForSwiftUI
//
//  Created by Quin on 2022/5/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SplashScreen(imageSize: CGSize(width: 128, height: 128)) {
            // home view...
            Home()
        } titleView: {
            Text("Chatty")
                .font(.system(size: 35).bold())
                .foregroundColor(.white)
        } logoView: {
            // make sure to give exact size of logo frame here...
            // my eg has 128x128...
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        } navButton: {
            // your nav bar buttons
            Button {
                
            } label: {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
