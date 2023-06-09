//////
//////  ContentView.swift
//////  r_men
//////
//////  Created by 柴田武蔵 on 2023/05/15.
//////

import SwiftUI

//ForEachに渡すデータコレクション
var cityArray = [
    "名古屋市中区","名古屋市中村区","名古屋市中川区","名古屋市北区","名古屋市千種区","名古屋市南区","名古屋市名東区","名古屋市天白区","名古屋市守山区","名古屋市昭和区","名古屋市中川東区","名古屋市港区","名古屋市熱田区","名古屋市瑞穂区","名古屋市緑区","名古屋市西区","あま市","みよし市","一宮市","刈谷市","北名古屋市","半田市","南知多市","大府市","安城市","小牧市","尾張旭市","岡崎市","岩倉市","常滑市","弥富市","愛西市","新城市","日進市","春日井市","東海市","江南市","津島市","清須市","瀬戸市","犬山市","田原市","知多市","知立市","碧南市","稲沢市","蒲郡市","西尾市","豊川市","豊明市","豊橋市","豊田市","長久手市","高浜市","丹羽郡","北設楽郡","愛知郡","海部郡","知多郡","西春日井郡","額田郡"]


struct citiesView:View {
    @Binding var isModal:Bool
    @Binding var cities:String

    var body: some View {

        NavigationView {
            List {
                //インデックス番号を使いリスト表示
                ForEach(cityArray.indices, id: \.self) { index in
                    //各項目にタップジェスチャー設定
                    Text(cityArray[index]).onTapGesture {
                        //配列のインデックス番号と比較分岐
                        switch index {

                        case 0:
                            cities = "名古屋市中区"
                        case 1:
                            cities = "名古屋市中川区"
                        case 2:
                            cities = "名古屋市中村区"
                        case 3:
                            cities = "名古屋市北区"
                        case 4:
                            cities = "名古屋市千種区"
                        case 5:
                            cities = "名古屋市南区"
                        case 6:
                            cities = "名古屋市名東区"
                        case 7:
                            cities = "名古屋市天白区"
                        case 8:
                            cities = "名古屋市守山区"
                        case 9:
                            cities = "名古屋市昭和区"
                        case 10:
                            cities = "名古屋市東区"
                        case 11:
                            cities = "名古屋市港区"
                        case 12:
                            cities = "名古屋市熱田区"
                        case 13:
                            cities = "名古屋市瑞穂区"
                        case 14:
                            cities = "名古屋市緑区"
                        case 15:
                            cities = "名古屋市西区"
                        case 16:
                            cities = "あま市"
                        case 17:
                            cities = "みよし市"
                        case 18:
                            cities = "一宮市"
                        case 19:
                            cities = "刈谷市"
                        case 20:
                            cities = "北名古屋市"
                        case 21:
                            cities = "半田市"
                        case 22:
                            cities = "南知多市"
                        case 23:
                            cities = "大府市"
                        case 24:
                            cities = "安城市"
                        case 25:
                            cities = "小牧市"
                        case 26:
                            cities = "尾張旭市"
                        case 27:
                            cities = "岡崎市"
                        case 28:
                            cities = "岩倉市"
                        case 29:
                            cities = "常滑市"
                        case 30:
                            cities = "弥富市"
                        case 31:
                            cities = "愛西市"
                        case 32:
                            cities = "新城市"
                        case 33:
                            cities = "日進市"
                        case 34:
                            cities = "春日井市"
                        case 35:
                            cities = "東海市"
                        case 36:
                            cities = "江南市"
                        case 37:
                            cities = "津島市"
                        case 38:
                            cities = "清須市"
                        case 39:
                            cities = "瀬戸市"
                        case 40:
                            cities = "犬山市"
                        case 41:
                            cities = "田原市"
                        case 42:
                            cities = "知多市"
                        case 43:
                            cities = "知立市"
                        case 44:
                            cities = "碧南市"
                        case 45:
                            cities = "稲沢市"
                        case 46:
                            cities = "蒲郡市"
                        case 47:
                            cities = "西尾市"
                        case 48:
                            cities = "豊川市"
                        case 49:
                            cities = "豊明市"
                        case 50:
                            cities = "豊橋市"
                        case 51:
                            cities = "豊田市"
                        case 52:
                            cities = "長久手市"
                        case 53:
                            cities = "高浜市"
                        case 54:
                            cities = "丹羽郡"
                        case 55:
                            cities = "北設楽郡"
                        case 56:
                            cities = "愛知郡"
                        case 57:
                            cities = "海部郡"
                        case 58:
                            cities = "知多郡"
                        case 59:
                            cities = "西春日井郡"
                        case 60:
                            cities = "額田郡"
                        default:
                            cities = "未選択"
                        }

                        isModal.toggle()

                    }
                }
            }


            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {

                        isModal.toggle()

                    }, label: {
                        Text("戻る")
                    })

                }
                ToolbarItem(placement: .principal) {
                    Text("都市")

                        .font(.system(size:18))
                }
            }
        }
    }
}


struct ContentView: View {

    @State var cities = "未選択"
    @State var isModal = false
    @State var city = ""
    @State var buttonText = "ルーレットスタート"
    @State private var result = "文字"

    var body: some View {
        VStack {
            HStack {
                Text("都市")

                Spacer()

                Text(cities).padding()

                Spacer()

                Button(action: {

                    isModal.toggle()

                }, label: {
                    Text("変更")
                })
                .padding()
                .fullScreenCover(isPresented: $isModal, content: {
                    citiesView(isModal: $isModal, cities: $cities)
                })


            }.padding()

            Spacer()

            Text(result)
                .font(.largeTitle)
                .fontWeight(.heavy)

            Button(action: {
                performSearch(city_name: cities)
                buttonText = "もう一度"

            }, label: {
                Text(buttonText)
                    .fontWeight(.semibold)
                    .frame(width: 200, height: 60)
                    .foregroundColor(Color(.white))
                    .background(Color(.blue))
                    .cornerRadius(24)
            })

            Spacer()

        }
    }

    func performSearch(city_name: String){
        var text = "http://172.20.10.4/index.php?param=" + city_name
        //urlのエンコード
        text = text.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        /// URLの生成
        guard let url = URL(string: text) else {
            /// 文字列が有効なURLでない場合の処理
            return
        }
        /// URLリクエストの生成
        let request = URLRequest(url: url)

        /// URLにアクセス
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                guard let stringdata = String(data: data, encoding: .utf8) else {
                    print("Json decode エラー")
                    return
                }
                DispatchQueue.main.async {
                    result = stringdata
                }
            } else {
                print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            }

        }.resume()      // タスク開始処理（必須）
    }
}

//citiesViewのプレビュー
struct citiesViewWapper:View {

    @State var isModal = false
    @State var cities = ""

    var body: some View {
        citiesView(isModal: $isModal, cities: $cities)
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        citiesViewWapper()
    }
}


//import SwiftUI
//
//struct ContentView: View {
//    @State private var result = ""
//
//    /// データ読み込み処理
//    func loadData() {
//        var text = "http://127.0.0.1:80/index.php?param=名古屋市南区"
//        text = text.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
//
//        /// URLの生成
//        guard let url = URL(string: text) else {
//            /// 文字列が有効なURLでない場合の処理
//            return
//        }
//
//        /// URLリクエストの生成
//        let request = URLRequest(url: url)
//
//        /// URLにアクセス
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let data = data {
//                guard let stringdata = String(data: data, encoding: .utf8) else {
//                    print("Json decode エラー")
//                    return
//                }
//                DispatchQueue.main.async {
//                    result = stringdata
//                }
//            } else {
//                print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//            }
//
//        }.resume()      // タスク開始処理（必須）
//    }
//
//    var body: some View {
//        ZStack {
//            Text(result)
//        }
//        .onAppear() {
//            loadData()
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
