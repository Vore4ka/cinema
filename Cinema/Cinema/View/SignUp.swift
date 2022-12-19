//
//  SignUp.swift
//  Cinema
//
//  Created by Student on 20.01.2022.
//

import SwiftUI

struct SignUp: View {
    
    @State var name = ""
    @State var surname = ""
    @State var email = ""
    @State var password1 = ""
    @State var password2 = ""
    @State var isActive = false
    
    var body: some View {
        ZStack{
            Color("blue")
            VStack{
                
                Spacer()
                
                Image("logo")
                Text("WorldCinema")
                    .foregroundColor(Color("orange"))
                    .bold()
                    .font(.system(size: 40))
                
                Spacer()
                
                VStack{
                //имя
                HStack{
                    TextField("name", text: $name)
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
                
                //Фамилия
                HStack{
                    TextField("surname", text: $surname)
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
                
                //email
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
                
                //пароль
                HStack{
                    TextField("password", text: $password1)
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
                
                //повтротите пароль
                HStack{
                    TextField("password", text: $password2)
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
                }
                Spacer()
                
                NavigationLink(destination: Main(), isActive: $isActive){
                Button(action: {
                    isActive.toggle()
                }){
                    Text("Зарегистрироваться")
                        .foregroundColor(Color.white)
                        .bold()
                }}
                    .frame(width:UIScreen.main.bounds.width-30, height: 50)
                    .background(Color("orange"))
                    .cornerRadius(4)
                
                NavigationLink(destination: SignIn()){
                    Text("У меня уже есть аккаунт")
                        .foregroundColor(Color("orange"))
                        .bold()
                        .frame(width:UIScreen.main.bounds.width-30, height: 50)
                }.overlay(
                 RoundedRectangle(cornerRadius: 4)
                    .stroke(Color("grey"), lineWidth: 1))
                
                Spacer()
            }
        }.ignoresSafeArea()
            .navigationBarHidden(true)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
