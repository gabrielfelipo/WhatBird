//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 19/04/23.
//

import SwiftUI

struct GuessView: View {
    var body: some View {
        
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack{
                    VStack{
                        
                        Spacer().frame(height: 32)
                        
                        HStack{
                            Spacer().frame(width: 32)
                            Spacer()
                            let firstText = Text("Now it's time for you to ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            let secondText = Text("guess which bird ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.green)
                            
                            let thirdText = Text("we are talking about")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            
                            firstText+secondText+thirdText
                            
                            Spacer()
                            Spacer().frame(width: 32)
                        }
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [.black,.clear], startPoint: .top, endPoint: .center).opacity(0.5))
                    .background(
                        Image("backgroundGuess")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .aspectRatio(contentMode: .fill)
                    )
                    
                    
                    HStack(spacing: 72){
                        
                        Spacer()
                        
                        VStack(spacing: 8){
                            NavigationLink(destination:ResultView(correct: true)){
                                Image("kakapoGuess")
                                    .resizable()
                                    .aspectRatio(CGSize(width: 172, height: 225),contentMode: .fit)
                            }
                            
                            Text("Kakapo")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        VStack(spacing: 8){
                            NavigationLink(destination:ResultView(correct: false)){
                                Image("kiwiGuess")
                                    .resizable()
                                    .aspectRatio(CGSize(width: 172, height: 225),contentMode: .fit)
                            }
                            
                            Text("kiwi")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        VStack(spacing: 8){
                            NavigationLink(destination:ResultView(correct: false)){
                                Image("eagleOwlGuess")
                                    .resizable()
                                    .aspectRatio(CGSize(width: 172, height: 225),contentMode: .fit)
                            }
                            
                            Text("Eagle Owl")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        VStack(spacing: 8){
                            NavigationLink(destination:ResultView(correct: false)){
                                Image("painho-of-monteiroGuess")
                                    .resizable()
                                    .aspectRatio(CGSize(width: 172, height: 225),contentMode: .fit)
                            }
                            
                            Text("Painho-of-Monteiro")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                    }
                    
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}
    
    struct GuessView_Previews: PreviewProvider {
        static var previews: some View {
            GuessView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
