//
//  ContentView.swift
//  ExampleUI
//
//  Created by Dev Mac on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var texto = "Texto"
    
    var body: some View {
        ZStack
        {
            Color.indigo
            
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "moon.stars")
                        .imageScale(.large)
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                    
                    Text("YOSDA \nAPP")
                        .fontWeight(.black)
                        .italic()
                        .font(.custom("Helvetica", size: 40))
                        .foregroundColor(.white)
                }
                Spacer()
                
                ZStack{
                    Rectangle()
                        .fill(.white)
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text("Crie sua conta")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                        
                        Text("E-mail")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $texto)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 8)
                            .background(Color(uiColor: .systemGray6))
                            .cornerRadius(12)
                            
                        Spacer()
                        
                            
                    }
                }
                .background(.white)
                .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
                .cornerRadius(30)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
