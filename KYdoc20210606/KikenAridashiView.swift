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
            HStack {
                Text("危険予知洗い出し")
                    .font(.title)
                Picker(selection: .constant(1), label: Text("選択")) {
                    Text("新規").tag(1)
                    Text("リストから").tag(2)
                }
            }
            .frame(width: 700)
            
            VStack {
                HStack {
                    Text("（１）")
                    TextField("危険予知をここに入力", text: $kiken1)
                        .frame(width: 700)
                }
                HStack {
                    Text("（２）")
                    TextField("危険予知をここに入力", text: $kiken2)
                        .frame(width: 700)
                }
                HStack {
                    Text("（３）")
                    TextField("危険予知をここに入力", text: $kiken3)
                        .frame(width: 700)
                }
                HStack {
                    Text("（４）")
                    TextField("危険予知をここに入力", text: $kiken4)
                        .frame(width: 700)
                }
                HStack {
                    Text("（５）")
                    TextField("危険予知をここに入力", text: $kiken5)
                        .frame(width: 700)
                }
            }
        }
        
        
        
        

    }
}

struct KikenAridashiView_Previews: PreviewProvider {
    static var previews: some View {
        KikenAridashiView(kiken1: .constant("a"), kiken2: .constant("b"), kiken3: .constant("c"), kiken4: .constant("d"), kiken5: .constant("e"))
    }
}
