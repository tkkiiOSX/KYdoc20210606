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

                Text("作業内容")
                    .font(.title)

                NavigationLink(destination: InputSgyonaiyouView()) {
                    Text("作業項目選択")
                }
        }
    }
}
struct SgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        SgyonaiyouView(sagyo1: .constant("a"), sagyo2: .constant("b"), sagyo3: .constant("c"), sagyo4: .constant("d"), sagyo5: .constant("c"))
    }
}


