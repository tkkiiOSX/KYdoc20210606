//
//  TopView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/09/18.
//

import SwiftUI

struct TopView: View {
    @ObservedObject var data = Data()

    var body: some View {
        VStack {
            Text("日時")
            Text("2021年9月19日　19:00")
            Text("名前（血液型）")
            ForEach(0 ..< data.now_name.count, id: \.self) {index in
                Text(data.now_name[index])
            }
            Text("作業項目")
            Text("危険予知項目")
            Text("安全対策項目")
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
