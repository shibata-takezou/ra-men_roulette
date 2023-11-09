//
//  AichiView.swift
//  r_men
//
//  Created by 柴田武蔵 on 2023/06/27.
//

import SwiftUI
var aichi_cityArray = [
    "名古屋市中区","名古屋市中村区","名古屋市中川区","名古屋市北区","名古屋市千種区","名古屋市南区","名古屋市名東区","名古屋市天白区","名古屋市守山区","名古屋市昭和区","名古屋市中川東区","名古屋市港区","名古屋市熱田区","名古屋市瑞穂区","名古屋市緑区","名古屋市西区","あま市","みよし市","一宮市","刈谷市","北名古屋市","半田市","南知多市","大府市","安城市","小牧市","尾張旭市","岡崎市","岩倉市","常滑市","弥富市","愛西市","新城市","日進市","春日井市","東海市","江南市","津島市","清須市","瀬戸市","犬山市","田原市","知多市","知立市","碧南市","稲沢市","蒲郡市","西尾市","豊川市","豊明市","豊橋市","豊田市","長久手市","高浜市","丹羽郡","北設楽郡","愛知郡","海部郡","知多郡","西春日井郡","額田郡"]
struct AichiView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("都市を選択してください")
                    .padding()
                NavigationLink(destination: RouletteView().navigationTitle("画面2")) {
                    Text("次へ")
                }
            }
        }
    }
}

struct AichiView_Previews: PreviewProvider {
    static var previews: some View {
        AichiView()
    }
}
