//
//  SgyonaiyouView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct SgyonaiyouView: View {

    @Binding var sagyo1: String
    @Binding var sagyo2: String
    @Binding var sagyo3: String
    @Binding var sagyo4: String
    @Binding var sagyo5: String

    var body: some View {

        VStack {
            HStack {
                Text("作業内容")
                    .font(.title)
                    
                Picker(selection: .constant(1), label: Text("選択")) {
                    Text("新規").tag(1)
                    Text("リストから").tag(2)
                }

            }
            VStack{
                HStack{
                    Text("（１）")
                    TextField("作業内容をここに入力", text: $sagyo1)
                }
                HStack{
                    Text("（２）")
                    TextField("作業内容をここに入力", text: $sagyo2)
                }
                HStack {
                    Text("（３）")
                    TextField("作業内容をここに入力", text: $sagyo3)
                }
                HStack{
                    Text("（４）")
                    TextField("作業内容をここに入力", text: $sagyo4)
                }

                HStack{
                    Text("（５）")
                    TextField("作業内容をここに入力", text: $sagyo5)
                }

            }

               
            
        }
    }
}
struct SgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        SgyonaiyouView(sagyo1: .constant("a"), sagyo2: .constant("b"), sagyo3: .constant("c"), sagyo4: .constant("d"), sagyo5: .constant("c"))
    }
}


