//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Andrey Studenkov on 22.01.2023.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("You should click the add button and add a bunch of item.")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                        radius: animate ? 30 : 10,
                        x: 0.0,
                        y: animate ? 50 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Test")
        }
        
    }
}
