//
//  PreContactView.swift
//  Sehat-in
//
//  Created by Garry on 19/02/22.
//

import SwiftUI

struct PreContactView: View {
    @AppStorage("subscribe") var subscribe = false
    
    var body: some View {
        VStack {
            if subscribe {
                ContactView()
            } else {
                SubscribeView()
            }
        }
    }
}

struct PreContactView_Previews: PreviewProvider {
    static var previews: some View {
        PreContactView()
    }
}
