//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 18/04/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack{
                    
                    VStack{
                        
                        Spacer().frame(height: 32)
                        
                        HStack{
                            Spacer().frame(width: 32)
                            Spacer()
                            
                            Text("This app was made to be used horizontally")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            
                            Spacer()
                            Spacer().frame(width: 32)
                        }
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [.black,.clear], startPoint: .top, endPoint: .center).opacity(0.5))
                    .background(
                        Image("Onboarding")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .aspectRatio(contentMode: .fill)
                    )
                    
                    NavigationLink(destination: HomeView()){
                        Rectangle()
                            .opacity(0.0001)
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
