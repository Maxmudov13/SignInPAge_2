//
//  ContentView.swift
//  SignInPAge
//
//  Created by user on 14/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView{
            VStack{
                Button{
                    
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                    
//                    UserDefaults.standard.set(false, forKey: "status")
//                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                    
                } label: {
                    Text("Log Out")
                        .foregroundColor(Color .red)
                }
            }
            .navigationBarItems(leading: Image(systemName: "clock"), trailing: Image(systemName: "camera"))
            .foregroundColor(Color.red)
            .navigationBarTitle(Text("Instagram"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
