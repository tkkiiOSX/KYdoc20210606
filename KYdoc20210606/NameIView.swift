//
//  NameIView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/11.
//

import SwiftUI

struct NameIView: View {

    @Binding var name1: String
    @Binding var name2: String
    @Binding var name3: String
    @Binding var name4: String
    @Binding var name5: String
    @Binding var name6: String

    @Binding var sel1: Int
    @Binding var sel2: Int
    @Binding var sel3: Int
    @Binding var sel4: Int
    @Binding var sel5: Int
    @Binding var sel6: Int

    



    var body: some View {
        VStack {
            Text("参加者氏名")
                .font(.title)

            NavigationLink(destination: InputNameView()) {
                Text("名前選択")
            }
        }

    }
}

struct NameIView_Previews: PreviewProvider {
    static var previews: some View {
        NameIView(name1: .constant("a"), name2: .constant("a"), name3: .constant("a"), name4: .constant("a"), name5: .constant("a"), name6: .constant("a"), sel1: .constant(0), sel2: .constant(0), sel3: .constant(0), sel4: .constant(0), sel5: .constant(0), sel6: .constant(0))
    }
}
