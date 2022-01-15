import SwiftUI

struct SignIn: View {
    
    @EnvironmentObject var status: Status
    
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                Spacer()
                // Profiel image
                Image("image0")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .cornerRadius(100)
                    
                // Title text
                Text("Instagram")
                    .font(.system(size: 35))
                
                // Email TextField
                TextField("Email@gmail.com", text: $email )
                    .frame(height: 45)
                    .font(.system(size: 20))
                    .padding(.leading,15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .padding(.bottom,10)
                
                // Password TextField
                SecureField("Password", text: $password)
                    .font(.system(size: 20))
                    .frame(height: 45)
                    .padding(.leading,15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .padding(.bottom,10)
                
                
                // SIGN IN  Button
                Button(action: {
                    
                    UserDefaults.standard.set("iMtRo", forKey: "userid")
                    status.listen()
                    
//                    UserDefaults.standard.set(true, forKey: "status")
//                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                    
                }, label: {
                    HStack{
                        Spacer()
                        
                        Text("Sign In")
                            .padding(7)
                            .font(.system(size: 25))
                        
                        Spacer()
                    }
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                        .padding()
                }).frame(height: 45)
                
                Spacer()
                
                // Botton { Text and Button }
                HStack{
                    
                    // Text
                    Text("Don't have an account ?")
                        .foregroundColor(Color.blue)
                    
                    // // SIGN UP  Button
                    NavigationLink(destination: {
                        SignUP()
                    }, label: {
                        Text("Sign Up")
                            .font(.system(size: 18))
                            .foregroundColor(Color.red)
                    })
                }
                
            }
            .navigationBarTitle("Instagram", displayMode: .inline)
            .padding()
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
