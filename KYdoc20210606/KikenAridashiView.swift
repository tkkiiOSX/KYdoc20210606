//
//  KikenAridashiView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct KikenAridashiView: View {
    @ObservedObject var data: Data

    var body: some View {

        VStack {
            Text("危険予知項目")

            ForEach(0 ..< data.now_kiken.count, id: \.self) {index in
                Text(data.now_kiken[index])
            }
            NavigationLink(destination: InputKikenAridashiIView(data: data)) {
                Text("危険予知項目を選択")
            }
        }
        .font(.title)
    }
}
struct KikenAridashiView_Previews: PreviewProvider {
    static var previews: some View {
        KikenAridashiView(data: Data())
    }
}

