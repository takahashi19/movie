#古いデータベース領域の削除
DROP DATABASE IF EXISTS TestCinema;
#データベース領域の作成
CREATE DATABASE TestCinema;
#データベース領域の指定
USE TestCinema;


/*************cinema****************************/

#movieテーブルの作成

CREATE TABLE movie(
	id INT AUTO_INCREMENT PRIMARY KEY,
	movie_name VARCHAR(30),
	synopsis VARCHAR(100),
	grossing VARCHAR(30),
	image VARCHAR(80)
);

#movieテーブルレコードの追加

INSERT INTO movie(movie_name,synopsis,grossing,image) VALUES
	#以下cinema内容へ入れ替え
	('アバター','ジェームズ・キャメロン監督が、3D技術をはじめ最先端の映像テクノロジーを存分に駆使して描くSFアクション超大作。','1263521126','avater.jpg'),
	('タイタニック','豪華客船タイタニックが処女航海に出発した。ローズとジャックは船上で運命的に出会い、お互いに強く惹かれていくのだが…。','2186772302','titanic.jpg'),
	('スター・ウォーズ/フォースの覚醒','映画史に燦然と輝くSF映画の金字塔スター・ウォーズシリーズが、新たなる3部作の幕開けとして贈る全世界待望のSF超大作。','2062346360','starwars_theforceawakens.jpg'),
	('アベンジャーズ/インフィニティ・ウォー','6つ揃うと全宇宙を滅ぼすほどのパワーを秘めた石を狙うサノスの野望を阻止すべく、アベンジャーズが繰り広げる壮絶な戦い。','2046239637','avencers.jpg'),
	('ジュラシック・ワールド','火山噴火が迫る島から恐竜を救い出そうとする者たちの冒険を描く。監督はJ．A．バヨナ。メインキャストはクリス・プラット。','1668984926','jurassicworld.jpg'),
	('アベンジャーズ',	'かつてない異常気象に見舞われた英国。諜報機関は気象学者エマに調査を依頼し、指令を受けたジョンとの共同作業が始まった……。','1519557910','avencers.jpg'),
	('ワイルド・スピード SKY MISSION','家族とも呼べる固い絆で結ばれたドミニクたち。弟オーウェン・ショウの仇討ちに燃えるデッカードからの宣戦布告がきた。','1515047671','skymission.jpg'),
	('アベンジャーズ/エイジ・オブ・ウルトロン','アイアンマンやハルクはじめスーパー・ヒーローたちによって結成されたドリーム・チーム“アベンジャーズ”を実写化する超大作。','1405035767','avencers_ageofultoron.jpg'),
	('ブラックパンサー','国王とヒーローの顔を持つ男を主人公にしたアクション。チャドウィック・ボーズマンがブラックパンサーに扮している。','1346629590','blackpanther.jpg'),
	('ハリー・ポッターと死の秘宝 PART2','魔法学校ホグワーツさえも戦場となり、闇の帝王ヴォルデモートとハリー・ポッターの一騎打ちの行方を壮大なスケールで描き出す。','1341511219','harrypotterandthedeathlyhallowspart2.jpg'),
	('スター・ウォーズ/最後のジェダイ','ついにフォースを覚醒させ、伝説のジェダイ、ルーク・スカイウォーカーと出会ったレイを待ち受ける驚愕の運命。','1332416714','starwars_thelastjudi.jpg'),
	('ジュラシック・ワールド/炎の王国','2015年公開映画『ジュラシック・ワールド』の続編。火山噴火が迫る島から恐竜を救い出そうとする者たちの冒険を描く。','1300569140','jurassicpark_fallenkingdom.jpg'),
	('アナと雪の女王','王家の姉妹を主人公に、雪の女王となってしまった姉エルサとそんな姉と王国を救うために冒険の旅に出た妹アナの運命を描く。','1279852693','anayuki.jpg'),
	('美女と野獣','魔女の呪いによって野獣の姿に変えられてしまった王子。心に孤独を抱えながらも、自分の輝きを信じて生きる、ベルと出会うが。','1263521126','beautyandbeast.jpg'),
	('ワイルド・スピード ICE BREAK','謎の女サイバーテロリストと手を組んだドミニクの裏切りで最大の危機を迎えたファミリーの運命を壮大なスケールで描き出す','1238852693','wildspeedicebreak.jpg'),
	('インクレディブル・ファミリー','Mr．インクレディブルことボブ・パーとその家族を主人公に、恐るべき陰謀に力を合わせて立ち向かうヒーロー一家の活躍を描く。','1227498593','incredibles.jpg'),
	('アイアンマン3','彼は何かに取り憑かれたように新型アイアンマン・スーツの開発に没頭。心身共に追い詰められていくトニーだったが…。','1215439994','ironman3.jpg'),
	('ミニオンズ','リーダーのケビンは、スチュアート、ボブと一緒に新たなボスを探す旅に出ることに。女悪党スカーレットと出会うのだったが…。','1157275017','minions.jpg'),
	('シビル・ウォー/キャプテン・アメリカ','キャプテン・アメリカの旧友バッキーが容疑者として指名手配される事態となり、決断を迫られるキャプテン・アメリカだったが…。','1153394079','civilwar.jpg'),
	('トランスフォーマー/ダークサイド・ムーン','トランスフォーマーの侵略者が、人間たちを襲い始めたのだ。そして、政府が隠し続けてきた事実が最悪の事態を招くことになる。','1123794079','transformers_darkofthemoon.jpg'),
	('ロード・オブ・ザ・リング/王の帰還','長らく国交が途絶えていたローハンの人々も立ち上がる。フロドとサムもモルドールの滅びの山を目指して旅を再開するのだったが…','1119929521','loadofthering_thereturnoftheking.jpg'),
	('007 スカイフォール','ダニエル・クレイグ版3作目のスパイ・アクション大作。MI6への恨みを抱く最強の敵を前に、絶体絶命の窮地に追い込まれる。','1108561013','007_skyfall.jpg'),
	('トランスフォーマー/ロストエイジ','ある日、偶然手に入れた中古トラックがオプティマスだと気づく。謎の組織KSIが現われ、窮地に陥るケイドとテッサだったが。','1104039076','transformers_ageofextinction.jpg'),
	('ダークナイト ライジング','平穏な日々を手に入れたゴッサム。新たなる敵、ベインの登場にブルースは再び立ち上がることを決意するが……。','1084439099','darknigtht_rises.jpg'),
	('トイ・ストーリー3','成長しておもちゃを卒業したアンディの手を離れ、新たな居場所を見つけたが，待ち受ける絶体絶命の危機と心温まる絆を描く。','1063171911','toystory3.jpg'),
	('パイレーツ・オブ・カリビアン/デッドマンズ・チェスト','海賊なら誰もが恐れる幽霊船フライング・ダッチマン号の船長デイヴィ・ジョーンズにもうじき魂を奪われようとしている。','1066179725','pairatesofcaribbean_deadmanschest.jpg'),
	('ローグ・ワン/スター・ウォーズ・ストーリー','反乱軍のローグ・ワンの一員となり、デス・スターの設計図を盗み出すという過酷なミッションに身を投じていくのだったが…。','1056179725','rogueone_starwars.jpg'),
	('パイレーツ・オブ・カリビアン/生命の泉','永遠の生命をもたらすという生命の泉を目指そうとしていた。泉の場所を知るジャックを泉探しの旅に巻き込んでいくのだが…。','1043871802','pairatesodcaribbean_onstrangertides.jpg'),
	('怪盗グルーのミニオン大脱走','悪党稼業から足を洗った主人公グルーが、新たなライバルや生き別れた双子の兄弟を相手に繰り広げる大騒動の行方を描く。','1033443377','minions_despicableme3.jpg'),
	('ジュラシック・パーク','太古の琥珀に閉じ込められたDNAから遺伝子工学によって蘇った恐竜たちだった。解き放たれた恐竜たちは人間に牙を剥き始めた。','1029153882','jurassicpark.jpg'),
	('ファインディング・ドリー','前作から1年後。忘れんぼうのドリーが思い出した“家族の思い出”を探るうちに、禁断の場所=人間の世界へとたどり着き……','1028644677','findingdory.jpg'),
	('スター・ウォーズ エピソード1/ファントム・メナス','アナキンに秘められたフォースの力を感じ取ったクワイ=ガン・ジンは、彼をジェダイ騎士団に入れようとするのだが……','1027044677','starwars_thephantommenace.jpg'),
	('アリス・イン・ワンダーランド','アリスは不思議なうさぎを追いかけて穴に落ちて辿り着いたのは、アンダーランドと呼ばれているあのワンダーランドだったのだが…','1025467110','aliceinwonderland.jpg'),
	('ズートピア','巷では連続行方不明事件が発生、警察も捜査に追われてんてこまい。ついにジュディにも捜査に参加するチャンスが巡ってくるが…','1023803568','zootopia.jpg'),
	('ホビット 思いがけない冒険','恐るべきスマウグに奪われたドワーフの王国を奪還する危険な旅に加わったホビット族のビルボ・バギンズが辿る壮大な冒険。','1017003568','hobbit_anunexpectedjourney.jpg'),
	('ダークナイト','新バットマンシリーズ第2作。理由も理屈もなく極悪非道な犯罪をもたらす最凶の敵・ジョーカーとバットマンの対決を描く超大作。','1004558444','darknight.jpg'),
	('ハリー・ポッターと賢者の石 ','魔法使いになるための勉強を始める。楽しい毎日を送るハリーだったが、やがて学校に隠された驚くべき秘密に気づくのだった……','974755371','harrypotterand thephilosophersstone.jpg'),
	('怪盗グルーのミニオン危機一発','美人エージェントルーシーから強引なスカウトを受ける。三姉妹との平和な暮らしを優先し、一度はこれを拒否するグルーだったが…','970761885','minions_espicableme2.jpg'),
	('ライオン・キング','シンバは国を追われたが、恋心を抱く幼なじみのナラに、故国の窮状を訴えられ皆を引き連れ帰郷、スカーと一対一の決闘に臨む……','987483777','lionking.jpg'),
	('ジャングル・ブック','人食い虎が狙ってやって来たため、逃げ回る少年は熊と仲良くなったり、さらわれたりしながら、ジャングルの掟を身につけていく。','966620425','junglebook.jpg'),
	('パイレーツ・オブ・カリビアン/ワールド・エンド','海の中へ消え去ってしまったジャック・スパロウの行方や、強大な陰謀に立ち向かう海賊たちの戦いが壮大なスケールで描かれる。','963420425','piratesofcaribbean_atworldsend.jpg'),
	('ジュマンジ/ウェルカム・トゥ・ジャングル','豹の彫像から失われた、エメラルド色の目玉を探し出し、「ジュマンジ」を救出し、ゲームから抜け出さないといけない。','961741163','jumanji_welcometothejungle.jpg'),
	('ハリー・ポッターと死の秘宝 PART1','3人の絆にも亀裂が生じ，一方、ヴォルデモートの影響力は、ついには魔法省ばかりかホグワーツまでもが支配下におかれてしまう。','960283305','harrypotter_andthedeathlyhallows1.jpg'),
	('ホビット 竜に奪われた王国','過酷な旅を続ける一行は、闇の森で獰猛な巨大クモに襲われ、間一髪のところをレゴラス率いるエルフたちに助けられるのだったが…','960366855','hobbit_theddesolationofsmaug.jpg'),
	('ホビット 決戦のゆくえ','エルフは財宝の分配を要求すると、トーリンはこれを頑なに拒否してしまう。衝突を回避しようと行動に出るビルボだったが…','955119788','hobbit_thebattleofthefivearmies.jpg'),
	('ファインディング・ニモ','打ちひしがれるマーリンだったが、陽気なナンヨウハギ、ドリーの助けを借りてニモを取り戻す旅へと出るのだった。','936743261','findingnemo.jpg'),
	('ハリー・ポッターと不死鳥の騎士団','魔法省は学校全体の監視役を送り込んでくる。一方、ヴォルデモートは仲間を集め、ハリーたちを陥れようと暗躍し始めていた…','939885929','harrypotter_andtheorderofthephoenix.jpg'),
	('ハリー・ポッターと謎のプリンス','最終決戦が迫っていることを知っているダンブルドア校長は、ハリーに来たるべき戦いにむけての準備を施していく。','934416487','harrypotter_andthehalf-bloodprince.jpg'),
	('ロード・オブ・ザ・リング/二つの塔','3人は、メリーとピピンを追う途中で、国王がサルマンの呪いに苦しめられているローハン王国へとやって来る…。','926047111','lordoftherings_the twotowers.jpg'),
	('シュレック2','シュレックとフィオナ姫はドンキーが到着すると、ハンサムな王子を期待し歓迎ムードだった全国民はシュレックの容姿を見て愕然。','919838758','shrek2.jpg');

/*************login****************************/

#userテーブルの作成

CREATE TABLE user(
	id INT PRIMARY KEY,
	user VARCHAR(20),
	password VARCHAR(20)
);

#userレコードの追加

INSERT INTO user(id,user,password) VALUES
	#以下Login内容へ入れ替え
	(100,'コージーコーナー','test'),
	(101,'旬果瞬菓','test');

/*************review****************************/

#reviewsテーブルの作成

CREATE TABLE reviews(
	id INT,
	content VARCHAR(100),
	hyouka INT,
	user_id INT,
	cinema_id	int
);

#reviewレコードの追加

INSERT INTO reviews(id,content,hyouka,user_id,cinema_id) VALUES
	#以下Login内容へ入れ替え
	(100,'コージーコーナー',100,100,100),
	(101,'旬果瞬菓',101,101,101);


