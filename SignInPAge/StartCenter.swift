//
//  StartCenter.swift
//  SignInPAge
//
//  Created by user on 14/01/22.
//

import SwiftUI

struct StartCenter: View {
    
    @EnvironmentObject var status: Status
    
    //@State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack{
            if self.status.userid != nil {
                ContentView()
            }else{
                SignIn()
            }
        }
        .onAppear {
            
            status.listen()
            
//        let name = NSNotification.Name("status")
//            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main){ (_) in
//                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
//            }
        }
    }
}

struct StartCenter_Previews: PreviewProvider {
    static var previews: some View {
        StartCenter()
    }
}
