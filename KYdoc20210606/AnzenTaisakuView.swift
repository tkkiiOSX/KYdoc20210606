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
            HStack {
                Text("安全対策")
                    .font(.title)
                Picker(selection: .constant(1), label: Text("選択")) {
                    Text("新規").tag(1)
                    Text("リストから").tag(2)
                }
            }
            
            
            VStack {
                HStack {
                    Text("（１）")
                    TextField("安全対策をここに入力", text: $anzen1)

                }
                HStack {
                    Text("（２）")
                    TextField("安全対策をここに入力", text: $anzen2)

                }
                HStack {
                    Text("（３）")
                    TextField("安全対策をここに入力", text: $anzen3)

                }
                HStack {
                    Text("（４）")
                    TextField("安全対策をここに入力", text: $anzen4)

                }
                HStack {
                    Text("（５）")
                    TextField("安全対策をここに入力", text: $anzen5)
                        
                }
            }
            
            
        }
            
        
        
        
        
        
        
    }
}

struct AnzenTaisakuView_Previews: PreviewProvider {
    static var previews: some View {
        AnzenTaisakuView(anzen1: .constant("a"), anzen2: .constant("b"), anzen3: .constant("c"), anzen4: .constant("d"), anzen5: .constant("e"))
    }
}
