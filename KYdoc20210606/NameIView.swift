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
        Text("参加者氏名")
            .font(.title)
        
        HStack {
            Text("（１）")
            TextField("氏名を入力", text: $name1)

            Picker(selection: $sel1, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })

            Text("（２）")
            TextField("氏名を入力", text: $name2)

            Picker(selection: $sel2, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })

        }

        HStack {
            Text("（３）")
            TextField("氏名を入力", text: $name3)

            Picker(selection: $sel3, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })
            Text("（４）")
            TextField("氏名を入力", text: $name4)

            Picker(selection: $sel4, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })
        }

        HStack {
            Text("（５）")
            TextField("氏名を入力", text: $name5)

            Picker(selection: $sel5, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })
            Text("（６）")
            TextField("氏名を入力", text: $name6)

            Picker(selection: $sel6, label: Text(""), content: {
                Text("本田").tag(0)
                Text("山葉").tag(1)
                Text("川崎").tag(2)
                Text("鈴木").tag(3)
                Text("新規入力").tag(4)
            })
        }

    }
}

struct NameIView_Previews: PreviewProvider {
    static var previews: some View {
        NameIView(name1: .constant("a"), name2: .constant("a"), name3: .constant("a"), name4: .constant("a"), name5: .constant("a"), name6: .constant("a"), sel1: .constant(0), sel2: .constant(0), sel3: .constant(0), sel4: .constant(0), sel5: .constant(0), sel6: .constant(0))
    }
}
