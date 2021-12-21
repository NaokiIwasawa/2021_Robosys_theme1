# 2021_Robosys_theme1
4sロボットシステム学課題1_提出用（Lチカとコンデンサー充電式電子メロディー）

## 概要
上田先生（千葉工業大学未来ロボティクス学科）の講義内容に沿って作成したデバイスドライバを用いてLED点灯とコンデンサーを用いた電子メロディーを聞くことが出来る

## 環境
Ubuntu 20.04.3 LTS

## 使用したもの
- Raspberry Pi 4 ModelB (RAM 8GB)   ×1
- ブレッドボード    ×1
- ジャンパ線    ×7~
- [ブレッドボード接続キット](https://akizukidenshi.com/catalog/g/gK-08892/) ×1
- ワニ口クリップ    ×4
- LED   ×2
- 抵抗470Ω  ×2
- アルミ電解コンデンサ(1F程度)  ×1
- 電子メロディー(エリーゼのために)    ×1

## 配線

### 回路図と写真
<img src="https://user-images.githubusercontent.com/71487827/146857595-0ae24c5e-f8c2-474d-bd46-f3117f71920e.png" width=400><img src="https://user-images.githubusercontent.com/71487827/146858374-380a1a2f-d637-475f-8193-f37f0e6e8efe.JPG" width=200>

コンデンサーと電子メロディーは並列に接続している

### GPIOの配線
|GPIOピン|用途|
|---|---|
|24|LED|
|25|LED|
|26|電子メロディーとコンデンサー|

※GNDピンはどれでもいい

## ビルド
```
$ git clone git@github.com:NaokiIwasawa/2021_Robosys_theme1.git
$ cd play
$ make
$ suod insmod myled.ko
$ sudo chmod 666 /dev/myled0
```

