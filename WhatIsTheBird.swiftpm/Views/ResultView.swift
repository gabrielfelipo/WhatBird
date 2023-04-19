//
//  SwiftUIView.swift
//  
//
//  Created by gabrielfelipo on 19/04/23.
//

import SwiftUI

struct ResultView: View {
    let correct: Bool
    
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    
                    Spacer().frame(height: 32)
                    
                    HStack{
                        Spacer().frame(width: 32)
                        Spacer()
                        
                        let firstText = Text("The ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)
                        let secondText = Text("secret bird ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.purple)
                        let thirdText = Text("was the ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)
                        let fourthText = Text("Kakapo")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.green)
                        
                        if correct == true {
                            let zeroText = Text("Congratulations! ")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.green)
                            
                            zeroText+firstText+secondText+thirdText+fourthText
                        }else{
                            firstText+secondText+thirdText+fourthText
                        }
                        
                        Spacer()
                        Spacer().frame(width: 32)
                    }
                    
                    Spacer()
                }
                .frame(width: .infinity, height: UIScreen.main.bounds.size.height)
                .background(LinearGradient(colors: [.black,.clear], startPoint: .top, endPoint: .center).opacity(0.8))
                .background(
                    Image("Result")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .aspectRatio(contentMode: .fill)
                )
                VStack{
                    Spacer().frame(height:48)
                    HStack{
                        Spacer().frame(width:56)
                        
                        let title1 = Text("About the ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)
                        let bird = Text("bird")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.green)
                        
                        title1+bird
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 16)
                    
                    HStack{
                        Spacer().frame(width: 56)
                        VStack(alignment: .leading){
                            Text("   The kakapo, also known as the night parrot, is a large, flightless parrot that is native to New Zealand. With a distinctive moss-green plumage and a face reminiscent of an owl, the kakapo is a unique and fascinating bird.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("   The kakapo is a nocturnal animal, which means that it is most active at night. It is also known for its distinctive, booming call that can be heard across long distances. This call is used by males to attract mates during the breeding season.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("   One of the most remarkable things about the kakapo is its size. It is one of the heaviest parrots in the world, weighing up to 4 kilograms (8.8 pounds) and measuring up to 60 centimeters (24 inches) in length. This size, combined with its inability to fly, makes the kakapo a very unusual bird.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("   Sadly, the kakapo is critically endangered, with only around 200 individuals left in the world. The main threats to the kakapo's survival are habitat loss, introduced predators such as rats, and diseases carried by other animals. Conservation efforts have been underway since the 1980s to save the kakapo from extinction, including a successful breeding program and the creation of predator-free island sanctuaries where the birds can be protected.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("   The kakapo is a fascinating and unique bird that has captured the hearts of many people around the world. With ongoing conservation efforts, there is hope that this remarkable species will continue to thrive and survive for future generations to enjoy.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                        }
                        
                        Spacer().frame(width: 56)
                    }
                    
                    Spacer().frame(height:32)
                    
                    HStack{
                        Spacer().frame(width:56)
                        let title2 = Text("How can i ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)
                        
                        let help = Text("help ")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.purple)
                        
                        let title2final = Text("help them?")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.white)
                                          
                        title2+help+title2final
                        
                        Spacer()
                    }
                    
                    HStack{
                        Spacer().frame(width: 56)
                        
                        VStack(alignment: .leading, spacing:16){
                            
                            Spacer().frame(height:1)
                            
                            Text("You can support one of several organizations working to save Kakapo, including:")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                            
                            Text("1.  Kakapo Recovery: This is a New Zealand government-funded conservation program that is dedicated to the recovery of the Kakapo. The program includes a range of activities, such as predator control, habitat restoration, and a successful breeding program.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("2.  World Parrot Trust: This international organization is dedicated to the conservation of parrots worldwide, including the Kakapo. The World Parrot Trust supports research, education, and community-based conservation initiatives.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("3.  Forest & Bird: This New Zealand-based conservation organization works to protect and restore the country's unique wildlife and wild places, including the Kakapo.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                            
                            Text("4.  Auckland Zoo: This zoo is home to a dedicated Kakapo breeding facility, which is part of the Kakapo Recovery Program. The zoo also supports research and public education initiatives related to the Kakapo and other endangered species.")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                        }
                        
                        Spacer().frame(width: 56)
                    }
                    
                    Spacer().frame(height:50)
                }
                .frame(maxWidth: .infinity)
                .offset(y:-50)
                .background(
                    Image("backResult")
                    .resizable()
                    .offset(y:-50)
                    )
            }
        }.navigationBarHidden(true)
            .background(Color(.black))
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(correct: true)
            .previewInterfaceOrientation(.landscapeRight)
    }
}
