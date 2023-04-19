//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 18/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack{
                    Image("Home")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .aspectRatio(contentMode: .fill)
                        .navigationBarHidden(true)
                    
                    NavigationLink(destination:QuestView()){
                        Rectangle().foregroundColor(.black)
                            .opacity(0.0001)
                    }
                }
                
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
