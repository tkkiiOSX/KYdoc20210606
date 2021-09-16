//
//  NameIView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/11.
//

import SwiftUI

struct NameIView: View {
    @ObservedObject var data: Data
    
    var body: some View {
        VStack {
            Text("参加者氏名（血液型）")
                .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0 ..< data.now_name.count, id: \.self) {index in
                    Text(data.now_name[index])
                    
                }
            NavigationLink(destination: InputNameView(data: data)) {
                
                Text("名前を選択")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.blue)
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
