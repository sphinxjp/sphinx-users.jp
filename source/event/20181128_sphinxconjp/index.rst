===============================
SphinxCon JP 2018 (2018/11/28)
===============================

SphinxCon JP 2018 を開催します。

これまで :doc:`2012年 <../20120916_sphinxconjp/index>` 、 :doc:`2013年 <../20130223_sphinxconjp/index>` 、 :doc:`2014年 <../20141026_sphinxconjp/index>` 、 :doc:`2015年 <../20151124_sphinxconjp/index>` 、 :doc:`2017年 <../20171128_sphinxconjp/index>`  と、開催してきたSphinxCon JPは、今年6回目の開催となります。


.. image:: images/SphinxConJP2018-logo.svg
   :align: center
   :alt: SphinxCon 2018 logo

Sphinxには多くの機能があり、色々な使い方ができます。
Sphinxがいまどのような分野で使われているのか、どんな機能があるのか、幅広く知るきっかけになればと思います。他の人のプレゼンテーションや会場での交流を通じて、みなさん自身のベストな使い方を発見してみてください！

.. contents::
   :local:

開催概要
==========

:日時: 11/28(水) 19:00〜22:00 (開場 18:45)
:場所: `VOYAGE GROUP`_ (東京都渋谷区神泉町8-16渋谷ファーストプレイス８Ｆ)
:会費: なし
:ネット: あり
:途中入退場: 自由
:交通:
   * JR山手線 渋谷駅より徒歩15分, 京王井の頭線 神泉駅より徒歩3分
   * `[AccessMap]`_ `[GoogleMap]`_
   * ご来場の際は公共交通機関をご利用下さい

.. _VOYAGE GROUP: https://voyagegroup.com/
.. _[AccessMap]: https://voyagegroup.com/company/profile/#wrap_map
.. _[GoogleMap]: https://goo.gl/g33Evz


参加登録
==========
* https://sphinxjp.connpass.com/event/103294/

タイムテーブル(仮)
======================
* 18:45- 開場
* 19:00- 開会 ～開始挨拶、会場紹介
* 19:15- 基調講演 tk0miya「docutils をマスターしよう」
* 19:45- ビアバッシュ & LT
* 20:15- 中盤の講演開始

  * やまねひでき「既存ドキュメントをSphinxにコンバートしてみた」15分
  * Kameko Ohmura「Sphinxからpoファイル作ってTransifexで翻訳してから、Sphinxに戻した話」10分
  * Kazuya Takei「素材の良さを活かしつつ、reSTをReveal.jsに変換してみる話」10分
  * anzawatta「Sphinxのテーブルで全角記号を使いたい」10分

* 21:10- 休憩
* 21:20- 後半の講演開始

  * Iosif Takakura「Sphinxでまとめる多言語環境APIドキュメント」15分
  * Takayuki Shimizukawa「Sphinx customization for OGP support」15分
  * 瀧澤昭広「SphinxとInDesignで書籍を作った話」15分

* 22:15- クロージング, 後片付け
* 22:30 解散

※敬称略

以下の CfP は締め切りました。多くのご応募ありがとうございました。

SphinxCon JP 2018 Call for Proposal https://docs.google.com/forms/d/e/1FAIpQLSedV_H2thJ-xqokoDrpvrnJUoaGSKGhX_tvBthP9-f9DsRHUg/viewform


SphinxConJP 2018 Talks
======================

基調講演 docutils をマスターしよう
-----------------------------------

:Time: 30 minutes
:Name: @tk0miya さん
:BIO: Sphinx のなかのひと。
:Keywords: docutils, document processing system

.. image:: images/tk0miya.jpg
   :alt: @tk0miya
   :width: 100

Sphinx をささえているライブラリのひとつである、docutils は汎用的なドキュメント処理フレームワークです。Sphinx のメンテナンスや Sphinx 拡張を作るにあたって、
docutils の使い方を知ることは必須科目とも言えます。このセッションでは docutils の構造を通してドキュメント変換ツールの基礎を学びます。

* https://docs.google.com/presentation/d/168yre5u_D2wQpeySrrDqV3cM9qE85YiaRTT8tMpjcGo

既存ドキュメントをSphinxにコンバートしてみた
--------------------------------------------

:Time: 15 minutes
:Name: やまねひできさん
:BIO: Debian developer / サイオステクノロジー株式会社所属
:Keywords: 事例紹介

.. image:: images/henrich.jpg
   :alt: @henrich
   :width: 100

SGMLで構成されていたDebian policyマニュアル（https://www.debian.org/doc/debian-policy/)へのSphinxの適用の経緯を紹介します

* https://docs.google.com/presentation/d/1tJRtGHkFwT0OvAuD346E3wpgrH7Yfl1tQCQXfaAkG2Q

Sphinxからpoファイル作ってTransifexで翻訳してから、Sphinxに戻した話
-------------------------------------------------------------------

:Time: 10 minutes
:Name: Kameko Ohmura さん
:BIO: 普通のPythonエンジニアです。PyLadies Tokyoのスタッフしてます。
:Keywords: Transifex, 翻訳

.. image:: images/okusama27.jpg
   :alt: @okusama27
   :width: 100

PyLadies Tokyoで本家PyLadiesのハンドブックを翻訳するプロジェクトを担当しています。本家もSphinxを使っているので、とても簡単に翻訳できた話をします。

素材の良さを活かしつつ、reSTをReveal.jsに変換してみる話
-------------------------------------------------------

:Time: 10 minutes
:Name: Kazuya Takei さん
:BIO: Pythonを主軸にしたいソフトウェアエンジニア / 株式会社ニジボックス
:Keywords: 拡張の紹介

.. image:: images/attakei.jpg
   :alt: @attakei
   :width: 100

「reStructuredTextをなるべく文書構造を活かしてReveal.jsに変換したい」というモチベーションで、Sphinx拡張+テーマを作ってみています。
SphinxのdoctreeとReveal.jsの文法を構造ベースで比較しつつ、どうやって拡張に落とし込んだかを中心に話します。

Sphinxのテーブルで全角記号を使いたい
------------------------------------

:Time: 10 minutes
:Name: anzawatta さん
:BIO: 趣味でPythonやSphinx使ってます。
:Keywords: docutils, east_asian_width

.. image:: images/anzawatta.jpg
   :alt: @anzawatta
   :width: 100

Sphinxとdocutilsでテーブルの文字列に全角記号を使う事について話します。

* https://speakerdeck.com/anzawatta/sphinxfalseteburudequan-jiao-ji-hao-woshi-itai-sphinxcon-jp-2018-53c329a6-e71a-4200-9374-2568f0c172b5

Sphinxでまとめる多言語環境APIドキュメント
-----------------------------------------

:Time: 15 minutes
:Name: Iosif Takakura さん
:BIO: アパレル系子会社に勤める雑食系ITエンジニア。主に.NET、Ruby、Python、JavaScript界隈に出没。仕事では.NETを主に使用。
:Keywords: 事例紹介, API Document, TypeDoc, DocFX,

.. image:: images/huideyeren.jpg
   :alt: @huideyeren
   :width: 100

.. raw:: html

   <iframe src="//www.slideshare.net/slideshow/embed_code/key/mJsxPbBlB0jOmS" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/iosiftakakurayusuke/sphinxapi" title="Sphinxでまとめる多言語環境APIドキュメント" target="_blank">Sphinxでまとめる多言語環境APIドキュメント</a> </strong> from <strong><a href="https://www.slideshare.net/iosiftakakurayusuke" target="_blank">Iosif Takakura</a></strong> </div>

Sphinx customization for OGP support
------------------------------------

:Time: 15 minutes
:Name: Takayuki Shimizukawa さん
:BIO: Sphinx supporter
:Keywords: Sphinx拡張

.. image:: images/shimizukawa.jpg
   :alt: @shimizukawa
   :width: 100

SphinxのHTML出力をOGPに対応させるSphinx拡張の書き方を紹介します。

.. raw:: html

   <iframe src="//www.slideshare.net/slideshow/embed_code/key/juUPSQnrDSmCxD" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/shimizukawa/sphinx-customization-for-ogp-support-sphinx-con-jp-2018" title="Sphinx customization for OGP support at SphinxCon JP 2018" target="_blank">Sphinx customization for OGP support at SphinxCon JP 2018</a> </strong> from <strong><a href="https://www.slideshare.net/shimizukawa" target="_blank">Takayuki Shimizukawa</a></strong> </div>

SphinxとInDesignで書籍を作った話
--------------------------------

:Time: 15 minutes
:Name: 瀧澤昭広さん
:BIO: 某出版社でSphinxやRe:VIEWを使って、動物が表紙の電子書籍や書籍を作っています。
:Keywords: Sphinx, InDesign

.. image:: images/turky.jpeg
   :alt: @turky
   :width: 100

同人誌などでSphinxのPDFビルダで書籍を作る例は見かけますが、今回は商業出版物をSphinxとInDesignを使って制作した顛末をご紹介します。

LT Sphinx-themes.org
--------------------

:Time: 5 minutes
:Name: @r_rudiさん
:BIO: Alpaca Japan
:Keywords: Sphinx, Theme

.. image:: images/r_rudi.png
   :alt: @r_rudi
   :width: 100

* https://speakerdeck.com/shirou/sphinx-themes-dot-org-in-sphinx-con-2018
