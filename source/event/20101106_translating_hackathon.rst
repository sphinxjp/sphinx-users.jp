Sphinx翻訳ハッカソン(2010/11/6)
================================

:日時: 2010/11/6 11:00～19:00
:場所: `アクセンス・テクノロジー(神楽坂)`__

.. __: http://accense.com/company/access.html

ソフトウェアのドキュメントに興味のある人が集まって、みんなで翻訳しよう、というイベントです。

なお、翻訳するものは問いませんし、Sphinxを使わなくてもOKです。また、一人でやっても、グループでやってもOK。一人では辛くてすぐ飽きちゃう活動も、みんなと一緒ならがんばれる！というのが目的です。また、翻訳とは関係なく、Sphinxを使ってみたい、という人でも歓迎です。

参加申込みはこちら -> `Sphinx + 翻訳 Hack-a-thon 2010.11 : ATND <http://atnd.org/events/9305>`_ (終了しました)

.. image:: 20101106_translation_hackathon/20101106_sphinxhack.jpg

今回のイベントは他のイベントと重なり過ぎたためか、参加者6名ではありましたが、いつも通り開催されました。さて、今回は比較的黙々と翻訳やSphinx関連の作業をしている感じでしたが、時々発生していた雑談ではOmegaTとの連携や形態素解析といった言語処理系の話題が多かったように思います。

成果報告
--------

* @shibukawa:

  * Sphinxの検索機能の各国語対応API実装
  * [blog投稿] Sphinx 1.1の検索機能の修正
    http://blog.shibu.jp/article/41616999.html
  * erlang のSystem Principlesと、efficiency guideのdriverの項目の翻訳が完了しました。
  * Redisの翻訳
  * 忘年会の相談と申し込みページ作成

* @aohta:

  * buildoutでrst2pdf環境を構築する手順を整理しました。
  * redisのマニュアル読みつつ、android向けのwebデザインのページ探してたりしました。

* @kuenishi:

  * setuptoolsが変な動作するのでMacPortsでPython-2.7入れました。
  * docxbuilderが動くようになった
    http://pypi.python.org/pypi/sphinxcontrib-docxbuilder
  * CouchDB本の翻訳がちょっと進んだ

* @shimizukawa

  * Zope-2.13.0 のリリースアナウンス、リリースノートを翻訳
    http://zope.jp/download/zope/releases/2.13.0

  * http://readthedocs.org/ を触ってみた。
    readthedocsはドキュメントをホスティングしてくれるサービス。
    リポジトリから自動的にとってきて、Sphinx自動buildして公開、ただし
    毎回自動化するにはコミットフックで通知するなどが必要。
    ルートディレクトリ以外に置いた場合にビルドさせるURL指定方法がわからない。

  * 12/3 のJUS勉強会の方針作成しました。

* @takabow

  * MBA上に快適翻訳環境の構築。XCode, MacPortsのインストールから始まって、各種ツールをひたすらbuild...

* @shkumagai

  * I've complete installing Sphinx into MacOSX on MBAir.


