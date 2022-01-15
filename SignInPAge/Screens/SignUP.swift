import SwiftUI

struct SignUP: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var firstName: String = ""
    @State var LastName: String = ""
    @State var email: String = ""
    @State var address: String = ""
    @State var password: String = ""

    
    var body: some View {
        VStack{
            Spacer()
            // Text Title
            Text("Instagram")
                .font(.system(size: 40))
            
            // FirstName TextField
            TextField("FirstName...", text: $firstName )
                .font(.system(size: 20))
                .frame(height: 45)
                .padding(.leading,15)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                .padding(.bottom,10)
            
            // LastName TextField
            TextField("LastName...", text: $LastName )
                .font(.system(size: 20))
                .frame(height: 45)
                .padding(.leading,15)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                .padding(.bottom,10)
            
            // Email TextField
            TextField("Email@gmail.com", text: $email )
                .font(.system(size: 20))
                .frame(height: 45)
                .padding(.leading,15)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
                .padding(.bottom,10)
            
            // Address TextField
            TextField("Address...", text: $address )
                .font(.system(size: 20))
                .frame(height: 45)
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
            
            // SIGN UP Button
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                HStack{
                    Spacer()
                    
                    Text("Sign Up")
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
            
            HStack{
                Text("Don't have an account ?")
                    .foregroundColor(Color.blue)
                
                
                Button{
                    presentation.wrappedValue.dismiss()
                } label: {
                    Text("Sign In")
                        .font(.system(size: 18))
                        .foregroundColor(Color.red)
                }
            }
        }
        .padding()
    }
}

struct SignUP_Previews: PreviewProvider {
    static var previews: some View {
        SignUP()
    }
}
