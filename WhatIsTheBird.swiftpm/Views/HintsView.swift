//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 19/04/23.
//

import SwiftUI

struct HintsView: View {
    @State var hintIndex: Int
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ZStack{
                    VStack{
                        
                        Spacer().frame(height: 32)
                        
                        HStack{
                            Spacer().frame(width: 32)
                            Spacer()
                            
                            hintsData[hintIndex].text
                                .font(.system(size: 40, weight: .bold))
                            
                            Spacer()
                            Spacer().frame(width: 32)
                        }
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .background(LinearGradient(colors: [.black,.clear], startPoint: .top, endPoint: .center).opacity(0.8))
                    .background(
                        hintsData[hintIndex].image
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .aspectRatio(contentMode: .fill)
                    )
                    
                    // Arrows
                    HStack{
                        Spacer().frame(width: 32)
                        if hintIndex > 0{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .foregroundColor(.white)
                                .aspectRatio(CGSize(width: 5, height: 10),contentMode: .fit)
                                .frame(height: UIScreen.main.bounds.size.height/10)
                                .opacity(0.1)
                                .navigationBarHidden(true)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(CGSize(width: 5, height: 10),contentMode: .fit)
                            .frame(height: UIScreen.main.bounds.size.height/10)
                            .opacity(0.1)
                        
                        Spacer().frame(width: 32)
                    }
                    
                    // Alternate hints
                    HStack{
                        Rectangle().foregroundColor(.black)
                            .opacity(0.0001)
                            .onTapGesture {
                                if hintIndex > 0{
                                    hintIndex -= 1
                                }
                            }
                        if hintIndex < 3{
                            Rectangle().foregroundColor(.black)
                                .opacity(0.0001)
                                .onTapGesture {
                                    hintIndex += 1
                                }
                        }else{
                            NavigationLink(destination:GuessView()){
                                Rectangle().foregroundColor(.black)
                                    .opacity(0.0001)
                            }
                        }
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct HintsView_Previews: PreviewProvider {
    static var previews: some View {
        HintsView(hintIndex: 0)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
