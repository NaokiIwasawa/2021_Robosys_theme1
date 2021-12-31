# 2021_Robosys_theme1
4sロボットシステム学課題1_提出用（Lチカとコンデンサー充電式電子メロディー）

## Outline
上田先生（千葉工業大学未来ロボティクス学科）の講義内容に沿って作成したデバイスドライバを用いてLED点灯とコンデンサーを用いた電子メロディーを聞くことが出来る

## Environment
Ubuntu 20.04.3 LTS

## Prepare
- Raspberry Pi 4 ModelB (RAM 8GB)   ×1
- ブレッドボード    ×1
- ジャンパ線    ×7~
- [ブレッドボード接続キット](https://akizukidenshi.com/catalog/g/gK-08892/) ×1
- ワニ口クリップ    ×4
- LED   ×2
- 抵抗470Ω  ×2
- アルミ電解コンデンサ(1F程度)  ×1
- 電圧をかけるだけで鳴る電子メロディー(エリーゼのために)    ×1

## Wiring diagram

<img src="https://user-images.githubusercontent.com/71487827/146857595-0ae24c5e-f8c2-474d-bd46-f3117f71920e.png" width=400><img src="https://user-images.githubusercontent.com/71487827/146858374-380a1a2f-d637-475f-8193-f37f0e6e8efe.JPG" width=200>

コンデンサーと電子メロディーは並列に接続している

### GPIO 
|GPIOピン|用途|
|---|---|
|24|LED|
|25|LED|
|26|電子メロディーとコンデンサー|

※GNDピンはどれでもいい

## Build
```
$ git clone git@github.com:NaokiIwasawa/2021_Robosys_theme1.git
$ cd play
$ make
$ sudo insmod myled.ko
$ sudo chmod 666 /dev/myled0
```
---

## Play

```
$ echo 1 > /dev/myled0
```
[![movie](https://user-images.githubusercontent.com/71487827/147806212-27e7805f-1961-47e5-b325-2a934b141379.jpg)](https://www.youtube.com/watch?v=vOSwD2V_tys)

1.  LEDが点滅しコンデンサーの充電が行われる
2.  コンデンサーの充電がある程度進むとメロディーが鳴り始める
3.  メロディーが安定してくると充電が完了
4.  電源供給が終了しLEDも消灯
5.  コンデンサーの放電によってメロディーが鳴る
6.  時間がたつとメロディーが徐々に小さくなる

## Finish
```
$ echo 0 > /dev/myled0
$ sudo rmmod myled
$ make clean
```

## License
[GNU General Public License v3.0](https://github.com/NaokiIwasawa/2021_Robosys_theme1/blob/master/LICENSE)

電子メロディーの『エリーゼのために』は作曲家ルートヴィヒ・ヴァン・ベートーヴェンの死後70年を過ぎるため著作権は保護期間を過ぎている
