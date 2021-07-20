//
//  AnzenTaisakuView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct AnzenTaisakuView: View {
    
    @Binding var anzen1: String
    @Binding var anzen2: String
    @Binding var anzen3: String
    @Binding var anzen4: String
    @Binding var anzen5: String
    
    var body: some View {
        VStack {
            Text("安全対策")
                .font(.title)

            NavigationLink(destination: InputAnzenTaisakuView()) {
                Text("安全対策選択")
        }
    }
}

struct AnzenTaisakuView_Previews: PreviewProvider {
    static var previews: some View {
        AnzenTaisakuView(anzen1: .constant("a"), anzen2: .constant("b"), anzen3: .constant("c"), anzen4: .constant("d"), anzen5: .constant("e"))
    }
}
}
