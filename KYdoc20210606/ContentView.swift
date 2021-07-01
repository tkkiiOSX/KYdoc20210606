//
//  ContentView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/06/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var name1: String = ""
    @State var name2: String = ""
    @State var name3: String = ""
    @State var name4: String = ""
    @State var name5: String = ""
    @State var name6: String = ""
    
    @State var nichiji: Date = Date()
    
    @State var sagyo1: String = ""
    @State var sagyo2: String = ""
    @State var sagyo3: String = ""
    @State var sagyo4: String = ""
    @State var sagyo5: String = ""
    
    @State var kiken1: String = ""
    @State var kiken2: String = ""
    @State var kiken3: String = ""
    @State var kiken4: String = ""
    @State var kiken5: String = ""
    
    @State var anzen1: String = ""
    @State var anzen2: String = ""
    @State var anzen3: String = ""
    @State var anzen4: String = ""
    @State var anzen5: String = ""
    
    @State var sel1 = 0
    @State var sel2 = 0
    @State var sel3 = 0
    @State var sel4 = 0
    @State var sel5 = 0
    @State var sel6 = 0
    
    var dateF: DateFormatter {
        let f = DateFormatter()
        f.dateStyle = .short
        f.timeStyle = .short
        f.locale = Locale(identifier: "ja_JP")
        return f
    }
    
    var body: some View {
        NavigationView {
            Form {
                VStack(spacing: 34.0) {
                    NavigationLink(destination: KYList()) {
                        Text("危険予知リスト")
                            .font(.largeTitle)
                    }
                    VStack {
                        Text("危険予知＆対策記録")
                            .font(.largeTitle)
                        Text("参加者氏名")
                            .font(.title)
                        HStack {
                            Text("（１）")
                            TextField("氏名を入力", text: $name1)
                                .frame(width: 300)
                            Picker(selection: $sel1, label: Text(""), content: {
                                Text("本田").tag(0)
                                Text("山葉").tag(1)
                                Text("川崎").tag(2)
                                Text("鈴木").tag(3)
                                Text("新規入力").tag(4)
                            })
                            
                            Text("（２）")
                            TextField("氏名を入力", text: $name2)
                                .frame(width: 300)
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
                                .frame(width: 300)
                            Picker(selection: $sel3, label: Text(""), content: {
                                Text("本田").tag(0)
                                Text("山葉").tag(1)
                                Text("川崎").tag(2)
                                Text("鈴木").tag(3)
                                Text("新規入力").tag(4)
                            })
                            Text("（４）")
                            TextField("氏名を入力", text: $name4)
                                .frame(width: 300)
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
                                .frame(width: 300)
                            Picker(selection: $sel5, label: Text(""), content: {
                                Text("本田").tag(0)
                                Text("山葉").tag(1)
                                Text("川崎").tag(2)
                                Text("鈴木").tag(3)
                                Text("新規入力").tag(4)
                            })
                            Text("（６）")
                            TextField("氏名を入力", text: $name6)
                                .frame(width: 300)
                            Picker(selection: $sel6, label: Text(""), content: {
                                Text("本田").tag(0)
                                Text("山葉").tag(1)
                                Text("川崎").tag(2)
                                Text("鈴木").tag(3)
                                Text("新規入力").tag(4)
                            })
                        }
                        
                    }
                    HStack {
                        Text("日時")
                            .font(.title)
                        Text(dateF.string(from: nichiji))
                            .padding()
                            .font(.title)
                    }
                    
                    VStack {
                        HStack {
                            Text("作業内容")
                                .font(.title)
                                .padding()
                            Picker(selection: .constant(1), label: Text("選択")) {
                                Text("新規").tag(1)
                                Text("リストから").tag(2)
                            }
                            
                        }
                        .frame(width: 700)
                        TextField("作業内容をここに入力", text: $sagyo1)
                            .frame(width: 700)
                        TextField("作業内容をここに入力", text: $sagyo2)
                            .frame(width: 700)
                        TextField("作業内容をここに入力", text: $sagyo3)
                            .frame(width: 700)
                        TextField("作業内容をここに入力", text: $sagyo4)
                            .frame(width: 700)
                        TextField("作業内容をここに入力", text: $sagyo5)
                            .frame(width: 700)
                    }
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
                    HStack {
                        Text("安全対策")
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
                            TextField("安全対策をここに入力", text: $anzen1)
                                .frame(width: 700)
                        }
                        HStack {
                            Text("（２）")
                            TextField("安全対策をここに入力", text: $anzen2)
                                .frame(width: 700)
                        }
                        HStack {
                            Text("（３）")
                            TextField("安全対策をここに入力", text: $anzen3)
                                .frame(width: 700)
                        }
                        HStack {
                            Text("（４）")
                            TextField("安全対策をここに入力", text: $anzen4)
                                .frame(width: 700)
                        }
                        HStack {
                            Text("（５）")
                            TextField("安全対策をここに入力", text: $anzen5)
                                .frame(width: 700)
                        }
                    }
                        }
                
            }
            }
            
        .navigationViewStyle(StackNavigationViewStyle())
                    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
