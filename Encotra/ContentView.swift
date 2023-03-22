//
//  ContentView.swift
//  Encotra
//
//  Created by Dany Garza on 22/03/23.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct WelcomeText : View {
    var body: some View {
        return Text("Bienvenido!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage : View{
    var body: some View{
        return Image("EncotraNoTitle")
            .resizable()
            .aspectRatio(UIImage(named: "EncotraNoTitle")!.size, contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .padding(.bottom, 75)
    }
}

extension Color {
    static let ui = Color.UI()
    
    struct UI {
         let Color1 = Color("Color1")
    }
}

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            WelcomeText()
            UserImage()
            TextField("Usuario", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.top, 100)
            SecureField("Contraseña", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.top, 10)
            Text("Login")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.ui.Color1)
                .cornerRadius(150)
                .padding(.top, 50)
        }
        .padding()
        .padding(.top, -150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
