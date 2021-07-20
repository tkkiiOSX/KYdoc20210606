//
//  KikenAridashiView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct KikenAridashiView: View {
    
    @Binding var kiken1: String
    @Binding var kiken2: String
    @Binding var kiken3: String
    @Binding var kiken4: String
    @Binding var kiken5: String
    
    var body: some View {
        VStack {
            Text("危険予知洗い出し")
                .font(.title)

            NavigationLink(destination: InputKikenAridashiIView()) {
                Text("危険項目選択")
            }
        }
    }
}

struct KikenAridashiView_Previews: PreviewProvider {
    static var previews: some View {
        KikenAridashiView(kiken1: .constant("a"), kiken2: .constant("b"), kiken3: .constant("c"), kiken4: .constant("d"), kiken5: .constant("e"))
    }
}
