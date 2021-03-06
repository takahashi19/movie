Movie.create!([
  {movie_name: "007 スカイフォール", synopsis: "ダニエル・クレイグ版3作目のスパイ・アクション大作。MI6への恨みを抱く最強の敵を前に、絶体絶命の窮地に追い込まれる。", grossing: "1108561013", image: "007_skyfall.jpg", star: 2.0},
  {movie_name: "アバター", synopsis: "ジェームズ・キャメロン監督が、3D技術をはじめ最先端の映像テクノロジーを存分に駆使して描くSFアクション超大作。", grossing: "1263521126", image: "avater.jpg", star: 3.0},
  {movie_name: "アイアンマン3", synopsis: "彼は何かに取り憑かれたように新型アイアンマン・スーツの開発に没頭。心身共に追い詰められていくトニーだったが…。", grossing: "1215439994", image: "ironman3.jpg", star: 4.0},
  {movie_name: "アナと雪の女王", synopsis: "王家の姉妹を主人公に、雪の女王となってしまった姉エルサとそんな姉と王国を救うために冒険の旅に出た妹アナの運命を描く。", grossing: "1279852693", image: "frozon.jpg", star: 5.0},
  {movie_name: "インクレディブル・ファミリー", synopsis: "Mr．インクレディブルことボブ・パーとその家族を主人公に、恐るべき陰謀に力を合わせて立ち向かうヒーロー一家の活躍を描く。", grossing: "1227498593", image: "incredibles.jpg", star: 2.0},
  {movie_name: "ジュマンジ/ウェルカム・トゥ・ジャングル", synopsis: "豹の彫像から失われた、エメラルド色の目玉を探し出し、「ジュマンジ」を救出し、ゲームから抜け出さないといけない。", grossing: "961741163", image: "jumanji_welcometothejungle.jpg", star: 2.0},
  {movie_name: "ジュラシック・パーク", synopsis: "太古の琥珀に閉じ込められたDNAから遺伝子工学によって蘇った恐竜たちだった。解き放たれた恐竜たちは人間に牙を剥き始めた。", grossing: "1029153882", image: "jurassicpark.jpg", star: 2.0},
  {movie_name: "ジュラシック・ワールド", synopsis: "火山噴火が迫る島から恐竜を救い出そうとする者たちの冒険を描く。監督はJ．A．バヨナ。メインキャストはクリス・プラット。", grossing: "1668984926", image: "jurassicworld.jpg", star: 2.0},
  {movie_name: "ジュラシック・ワールド/炎の王国", synopsis: "2015年公開映画『ジュラシック・ワールド』の続編。火山噴火が迫る島から恐竜を救い出そうとする者たちの冒険を描く。", grossing: "1300569140", image: "jurassicpark_fallenkingdom.jpg", star: 2.0},
  {movie_name: "シュレック2", synopsis: "シュレックとフィオナ姫はドンキーが到着すると、ハンサムな王子を期待し歓迎ムードだった全国民はシュレックの容姿を見て愕然。", grossing: "919838758", image: "shrek2.jpg", star: 2.0},
  {movie_name: "ズートピア", synopsis: "巷では連続行方不明事件が発生、警察も捜査に追われてんてこまい。ついにジュディにも捜査に参加するチャンスが巡ってくるが…", grossing: "1023803568", image: "zootopia.jpg", star: 2.0},
  {movie_name: "タイタニック", synopsis: "豪華客船タイタニックが処女航海に出発した。ローズとジャックは船上で運命的に出会い、お互いに強く惹かれていくのだが…。", grossing: "2186772302", image: "titanic.jpg", star: 2.0},
  {movie_name: "トイ・ストーリー3", synopsis: "成長しておもちゃを卒業したアンディの手を離れ、新たな居場所を見つけたが，待ち受ける絶体絶命の危機と心温まる絆を描く。", grossing: "1063171911", image: "toystory3.jpg", star: 2.0},
  {movie_name: "パイレーツ・オブ・カリビアン/デッドマンズ・チェスト", synopsis: "海賊なら誰もが恐れる幽霊船フライング・ダッチマン号の船長デイヴィ・ジョーンズにもうじき魂を奪われようとしている。", grossing: "1066179725", image: "pairatesofcaribbean_deadmanschest.jpg", star: 2.0},
  {movie_name: "パイレーツ・オブ・カリビアン/生命の泉", synopsis: "永遠の生命をもたらすという生命の泉を目指そうとしていた。泉の場所を知るジャックを泉探しの旅に巻き込んでいくのだが…。", grossing: "1043871802", image: "pairatesodcaribbean_onstrangertides.jpg", star: 3.0},
  {movie_name: "ハリー・ポッターと謎のプリンス", synopsis: "最終決戦が迫っていることを知っているダンブルドア校長は、ハリーに来たるべき戦いにむけての準備を施していく。", grossing: "934416487", image: "harrypotter_and%20the%20half-blood%20prince.jpg", star: 2.0},
  {movie_name: "ハリー・ポッターと不死鳥の騎士団", synopsis: "魔法省は学校全体の監視役を送り込んでくる。一方、ヴォルデモートは仲間を集め、ハリーたちを陥れようと暗躍し始めていた…", grossing: "939885929", image: "harrypotter_and%20theorderofthe%20phoenix.jpg", star: 4.0},
  {movie_name: "ファインディング・ドリー", synopsis: "前作から1年後。忘れんぼうのドリーが思い出した“家族の思い出”を探るうちに、禁断の場所=人間の世界へとたどり着き……", grossing: "1028644677", image: "findingdory.jpg", star: 5.0},
  {movie_name: "ファインディング・ニモ", synopsis: "打ちひしがれるマーリンだったが、陽気なナンヨウハギ、ドリーの助けを借りてニモを取り戻す旅へと出るのだった。", grossing: "936743261", image: "findingnemo.jpg", star: 1.0},
  {movie_name: "ホビット 決戦のゆくえ", synopsis: "エルフは財宝の分配を要求すると、トーリンはこれを頑なに拒否してしまう。衝突を回避しようと行動に出るビルボだったが…", grossing: "955119788", image: "hobbit_thebattle%20ofthefive%20armies.jpg", star: 1.0}
])


User.create!([
  {name: "たっち・みー", email: "test1@gmail.com", image_name: "default_user.jpg", password_digest: "test1"},
  {name: "ペロロンチーノ", email: "test2@gmail.com", image_name: "default_user.jpg", password_digest: "test2"},
  {name: "モモンガ", email: "test3@gmail.com", image_name: "default_user.jpg", password_digest: "test3"},
  {name: "TK", email: "test4@gmail.com", image_name: "default_user.jpg", password_digest: "test4"},
  {name: "tarou", email: "test5@gmail.com", image_name: "default_user.jpg", password_digest: "test5"},
  {name: "ぶくぶく茶釜", email: "test6@gmail.com", image_name: "default_user.jpg", password_digest: "test6"},
  {name: "セシル", email: "test7@gmail.com", image_name: "default_user.jpg", password_digest: "test7"},
  {name: "iris", email: "test8@gmail.com", image_name: "default_user.jpg", password_digest: "test8"},
  {name: "キラ☆", email: "test9@gmail.com", image_name: "default_user.jpg", password_digest: "test9"},
  {name: "reytyan", email: "test10@gmail.com", image_name: "default_user.jpg", password_digest: "test10"}
])
Whatsnew.create!([
  {news: "新宿にて「ヘレディタリー／継承」皆で叫べば大丈夫!?絶叫上映決定！！「ホラー映画は怖くて、リアクションが大きくなってしまうので遠慮してる」“絶叫上映”をご用意しました"},
  {news: "日比谷にて映画「ニセコイ」公開記念舞台挨拶を開催決定！TOHOシネマズ日比谷にて映画『ニセコイ』公開記念舞台挨拶の開催が決定。豪華ゲストをお迎えして舞台挨拶を実施致します"}
])
Review.create!([
  {content: "test1", hyouka: 5, user_id: 1, movie_id: 1},
  {content: "test2", hyouka: 4, user_id: 2, movie_id: 2},
  {content: "test3", hyouka: 1, user_id: 3, movie_id: 3},
  {content: "test4", hyouka: 4, user_id: 4, movie_id: 4},
  {content: "test5", hyouka: 5, user_id: 5, movie_id: 5},
  {content: "test6", hyouka: 5, user_id: 6, movie_id: 6},
  {content: "test7", hyouka: 4, user_id: 7, movie_id: 7},
  {content: "test8", hyouka: 1, user_id: 8, movie_id: 8},
  {content: "test9", hyouka: 4, user_id: 9, movie_id: 9},
  {content: "test10", hyouka: 5, user_id: 10, movie_id: 10},
  {content: "test11", hyouka: 4, user_id: 1, movie_id: 11},
  {content: "test12", hyouka: 1, user_id: 2, movie_id: 12},
  {content: "test13", hyouka: 2, user_id: 3, movie_id: 13},
  {content: "test14", hyouka: 4, user_id: 4, movie_id: 14},
  {content: "test15", hyouka: 5, user_id: 5, movie_id: 15},
  {content: "test1", hyouka: 1, user_id: 6, movie_id: 16},
  {content: "test2", hyouka: 2, user_id: 7, movie_id: 17},
  {content: "test3", hyouka: 5, user_id: 8, movie_id: 18},
  {content: "test4", hyouka: 2, user_id: 9, movie_id: 19},
  {content: "test5", hyouka: 4, user_id: 10, movie_id: 20},
  {content: "test16", hyouka: 3, user_id: 1, movie_id: 1},
  {content: "test17", hyouka: 3, user_id: 2, movie_id: 2},
  {content: "test18", hyouka: 3, user_id: 3, movie_id: 3},
  {content: "test19", hyouka: 4, user_id: 4, movie_id: 4},
  {content: "test20", hyouka: 4, user_id: 5, movie_id: 5},
  {content: "test21", hyouka: 4, user_id: 6, movie_id: 6},
  {content: "test22", hyouka: 5, user_id: 7, movie_id: 7},
  {content: "test23", hyouka: 5, user_id: 8, movie_id: 8},
  {content: "test24", hyouka: 3, user_id: 9, movie_id: 9},
  {content: "test25", hyouka: 4, user_id: 10, movie_id: 10},
  {content: "test26", hyouka: 1, user_id: 1, movie_id: 11},
  {content: "test27", hyouka: 1, user_id: 2, movie_id: 12},
  {content: "test28", hyouka: 2, user_id: 3, movie_id: 13},
  {content: "test29", hyouka: 3, user_id: 4, movie_id: 14},
  {content: "test30", hyouka: 1, user_id: 5, movie_id: 15},
  {content: "test31", hyouka: 2, user_id: 6, movie_id: 16},
  {content: "test32", hyouka: 3, user_id: 7, movie_id: 17},
  {content: "test33", hyouka: 1, user_id: 8, movie_id: 18},
  {content: "test34", hyouka: 1, user_id: 9, movie_id: 19},
  {content: "test35", hyouka: 1, user_id: 10, movie_id: 20}

])