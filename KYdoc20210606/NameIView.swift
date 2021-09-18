//
//  NameIView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/11.
//

import SwiftUI

struct NameIView: View {
    @ObservedObject var data: Data
    @State var select: Int = 0


    var body: some View {
        VStack {
            Text("参加者氏名（血液型）")
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0 ..< data.now_name.count, id: \.self) {index in
                Text(data.now_name[index])
            }
            Picker(selection: $select, label: Text("名前を選択")) {
                ForEach(0 ..< data.dic_name.count, id: \.self) {index in
                    Text(data.dic_name[index])
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            Button(action: {
                data.now_name.append(data.dic_name[select])
            }) {
                Text("選択した名前を登録")
            }
        }
        .font(.title)
    }
}

struct NameIView_Previews: PreviewProvider {
    static var previews: some View {
        NameIView(data: Data())
    }
}
