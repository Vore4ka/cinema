//
//  SignIn.swift
//  Cinema
//
//  Created by Student on 20.01.2022.
//

import SwiftUI

struct SignIn: View {
    
    @State var email = ""
    @State var password = ""
    @State var isActive = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("blue")
                    .ignoresSafeArea()
                VStack{
                    
                    Spacer()
                    
                    Image("logo")
                    Text("WorldCinema")
                        .foregroundColor(Color("orange"))
                        .bold()
                        .font(.system(size: 40))
                    
                    Spacer()
                    
                    //textField1
                    HStack{
                        TextField("email", text: $email)
                            .foregroundColor(Color("grey"))
                            .padding()
                            .frame(width:UIScreen.main.bounds.width-50)
                        
                    }
                    .padding(-5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color("grey"), lineWidth: 1)
                            .frame(width:UIScreen.main.bounds.width-30)
                    ).padding(.bottom, 10)
                    
                    //textField2
                    HStack{
                        TextField("password", text: $password)
                            .foregroundColor(Color("grey"))
                            .padding()
                            .frame(width:UIScreen.main.bounds.width-50)
                        
                    }
                    .padding(-5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color("grey"), lineWidth: 1)
                            .frame(width:UIScreen.main.bounds.width-30)
                    )
                    
                    Spacer()
                    NavigationLink(destination: Main(), isActive: $isActive){
                    Button(action: {
                        isActive.toggle()
                    }){
                        Text("Войти")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                    .frame(width:UIScreen.main.bounds.width-30, height: 50)
                    .background(Color("orange"))
                    .cornerRadius(4)
                    }
                    
                    NavigationLink(destination: SignUp()){
                   Text("Регистрация")
                            .foregroundColor(Color("orange"))
                            .bold()
                            .frame(width:UIScreen.main.bounds.width-30, height: 50)
                    }.overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color("grey"), lineWidth: 1))
                    Spacer()
                }
            }
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
