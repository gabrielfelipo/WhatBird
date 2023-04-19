//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 18/04/23.
//

import SwiftUI

struct QuestView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack{
                    
                    VStack{
                        Spacer().frame(height: 32)
                        
                        HStack{
                            Spacer().frame(width: 32)
                            Spacer()
                            
                            let firstText = Text(" In this app you have the objective of ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            let secondText = Text("guessing which bird ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.green)
                            
                            let thirdText = Text("is being talked about.  For this you will receive ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            
                            let fourthText = Text("4 ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.yellow)
                            
                            let fifthText = Text("hints")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                            
                            firstText+secondText+thirdText+fourthText+fifthText
                            
                            
                            Spacer()
                            Spacer().frame(width: 32)
                        }
                        
                        Spacer()
                    }.navigationBarHidden(true)
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [.black,.clear], startPoint: .top, endPoint: .center).opacity(0.5))
                        .background(
                            Image("Quest")
                                .resizable()
                                .edgesIgnoringSafeArea(.all)
                                .aspectRatio(contentMode: .fill)
                        )
                    
                    NavigationLink(destination:HintsView(hintIndex: 0)){
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

struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
