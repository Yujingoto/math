## 脳波解析のための数学シリーズ
　はじめまして．調べれば出てくるとは思いますが，とある大学院1年生の右脳くんです．  
　本書は脳神経科学(主に脳波)で様々なデータを扱う事になる若手のために, 必要になってくる数学の知識をざっくりとおさらい・説明するために作成しているもの...というスタートでしたが，読者なんてほぼいないので現在のところは自分用に勉強しつつまとめ，せっかくだからアウトプットの習慣をつけようというのが主なところになっています．さみしい．  
   
　当然神経科学は学際的な領域だし，必要になる数学も応用的であるため, 今まで数学に触れてこなかった人にはなかなか難解です．筆者も何回も挫折...というかあきらめ，少しずつ勉強してきました．独学では本当にどうしようもないほど時間がかかってしまいます．人によっては，自分も苦労したのだからお前らも苦労しろの精神でこうした知識の無償提供は嫌がるかもしれませんが，筆者個人の将来目標が大学の先生であることや，下を眺めているより引き上げて一緒に仕事していきたいという精神に基づき，少しでも後進のためになればと作成している資料です．良ければ活用してください．  

　必要となる最低限の数学的知識も高校レベルから解説したつもりです.  
  
　基礎をしっかりととらえなおす事で, 今まではわけわからない，気持ち悪い，としか思えなかった数々の数式も，「なんだ単純じゃん」と思えるようになります. 基礎のおぼつかない数学力でも, それっぽく説明されていると分かった気になってしまい, 深く学ばないものですが, それが原因で大学の数学に詰まる事となります. 受験の暗記数学じゃだめです．数式を言葉で説明できるようになることがまず第一の目標です．  
　こうして基礎をしっかりしておけば，新しい解析だったり手法に出会った時の学習コストが桁違いに軽くなります．最初は基礎からやっていると全然研究の役に立つ気がしなくて微妙に感じるかもしれませんが，きっと最終的にはこっちの方が近道だと思います．特にBasicについてはかなり丁寧に書いたつもりなので，是非役立ててがんばってください．    
  
　一見遠回りに見えますが, 確実にこの方が力になり, 結果的な定着も早いです. 一緒にがんばりましょう.  
  

## 見方
　本稿はテーマごと，いくつかのフォルダに分かれています．  
　それぞれのフォルダには，本体のpdf，pdfを作成するtexファイル(筆者用が主な意図．tex書式の参考にしたい人は自由にダウンロードしてください)，それから文中で登場する各種処理のプログラムでの実装ファイルが格納されています．MATLAB環境があれば，自分のローカルで実際に手を動かしてみると理解をより早く進める事が出来るでしょう．（未実装！てへぺろ！）

## フォルダわけ
Basic -> 基本数学．高校数学から大学1.2年の数学くらいまで．  
Analysis -> 脳波解析の数学．最低限ここまで出来れば卒論・修論くらいならいけると思います．  
Statistics -> 統計．推定，予測，検定...検定は誰でも使いますがそのほかはAdvancedの準備的意図が多いです．  
Advanced -> 情報理論や力学といったその他．計算論的神経科学．筆者が専門にしつつある領域なので勉強がてら虫食いでまとめます．

## おことわり
　筆者は数学者じゃないのと，そもそも大学の環境だったり周りの人的に，先生がいませんでした．なので本稿はほぼ98%が独学によって作成されています．推敲は重ねていますが，内容について偉い人のお墨付きがあるわけじゃないです．極力ないようにしているつもりですが，誤った説明もおそらく沢山あります．自分で他の資料をあたってて矛盾する事があったら，そちらを信じてください．  
　ついでにこっそりと間違いの指摘をしていただけると助かります．人格攻撃じゃないマサカリは大歓迎です．
