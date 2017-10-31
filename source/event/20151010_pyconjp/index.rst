================================
PyCon JP 2015 (2015/10/09 - 12)
================================

2015/10/9(金)～10/12(月)にかけて開催された `PyCon JP 2015`_ のハンズオン、ポスターセッション、スプリント企画に参加しました。ここでは、カンファレンス期間中にあった、Sphinx関連のイベントについて紹介します。

.. _PyCon JP 2015: https://pycon.jp/2015/

.. contents::
   :local:


ハンズオン
===========

ハンズオンは、10月9日(金)の10時～13時に開催されました。

8名の参加者すべてがSphinxを使い始めたところということでした。
Sphinxを使う目的は、Wordの置き換えとしてテキストベースのドキュメンテーションツールを導入したい、という方がほとんどでした。リポジトリで管理しやすい、差分を把握しやすい、プログラムと一緒に管理しやすい、ネットワーク図やシーケンス図を描きやすい、といったあたりがSphinxを使うメリットとして見られているようです。

.. figure:: handson1.*
   :width: 500

   ハンズオンの説明

チュートリアルは、当サイトに掲載している :doc:`../../gettingstarted/index` という記事を元に行いました。まずは、 ``sphinx-quickstart`` から始めて、複数ページの扱い方、記法の練習などを各自進めてもらい、質問があれば手を挙げてもらって講師が答える、というスタイルです。

.. figure:: handson2.*
   :width: 500

   ハンズオン中の様子1

.. figure:: handson3.*
   :width: 500

   ハンズオン中の様子2

.. figure:: handson4.*
   :width: 500

   ハンズオン中の様子3

.. figure:: handson5.*
   :width: 500

   ハンズオン中の様子4


チュートリアルの最後には、個別に出た質問と回答をいくつか紹介しました。
例えば、テーブルの作成方法として、Sphinxで使える4つの方法とそれぞれの特徴について紹介しました。


プレゼン
=========

10月10日(土)に、清水川（Sphinx-users.jp運営、Sphinxメンテナ）が `Sphinxで作る貢献しやすいドキュメント翻訳の仕組み`_ というタイトルで、Sphinxのドキュメント翻訳サポート機能(i18n)について紹介し、約100名の方が参加してくれました。発表の最初に参加者に行った質問で、「技術文書の翻訳は他の技術者の助けになると思いますか？」という問いに、8割近くの参加者が手を挙げました。技術文書の翻訳は、日本では高いニーズがあると言えるでしょう。

この発表では、翻訳者が挫折せずに参加しやすい翻訳の仕組みを紹介しました。Sphinxの多言語化機能と Transifex_ サービスを組み合わせて使う事で、そのような仕組みを作れます。

.. raw:: html

   <iframe src="//www.slideshare.net/slideshow/embed_code/key/sSPVJJCHbsvUyt" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/shimizukawa/sphinx-53764167" title="Sphinxで作る貢献しやすいキュメント翻訳の仕組み" target="_blank">Sphinxで作る貢献しやすいキュメント翻訳の仕組み</a> </strong> from <strong><a href="//www.slideshare.net/shimizukawa" target="_blank">Takayuki Shimizukawa</a></strong> </div>


.. _Sphinxで作る貢献しやすいドキュメント翻訳の仕組み: http://www.slideshare.net/shimizukawa/sphinx-53764167
.. _Transifex: https://www.transifex.com/

ポスターセッション
===================

10月11日(日)の11時～13時に、ポスターセッションが開催されました。
ポスターセッションでは、Sphinx関連のポスターを掲示し、訪れた参加者にSphinxを紹介したり、質問を受けたり、あるいはドキュメンテーションツールについて議論を交わしたりしました。

.. figure:: poster1.*
   :width: 500

   ポスターセッション、Sphinxブースの様子

.. figure:: poster2.*
   :width: 500

   来場者にSphinxの機能を紹介

スプリント
===========

スプリントは10月12日(月・祝)の10時半～18時に開催されました。
スプリントは、短期集中型のソフトウェア開発イベントです。今回のスプリントでは6名が参加し、一緒にSphinxのドキュメント翻訳や開発などを行いました。

.. figure:: sprint1.*
   :width: 500

   Sphinxスプリントチーム


今回はPyCon JPイベント内での開催だったためか、初めて参加した方、遠方から参加した方が半数でした。今回はSphinxドキュメントの翻訳プロジェクトへの参加方法を教え、さっそくいくつかの文章翻訳に協力してもらいました。こういったイベントでは、文字では伝えづらいことを直接伝えられるのがメリットですね。

スプリントチームの成果発表
-------------------------------

最後に、チームを代表して清水川がSphinxチームの成果発表を行いました。

.. figure:: sprint2.*
   :width: 500

   Sphinxチームの成果発表


* @TakesxiSximada (たけししまだ)

  * http://jsonschema-ja.readthedocs.org/en/latest/  の翻訳の続きをやります!!
  * jsonschemaのdocumentの翻訳中にtypoを見つけたのでPRした

* @takuan_osho (しみずたく)

  * EPUB3の勉強する
  * O'reillyの"EPUB 3とは何か？"を読んだ
  * EPUB3の仕様を読もうと思ったら鹿野さんからアドバイスもらった
  * EPUB3 Best Practiceをちょっと読んだ

* @non_additive (たきぐちゆうすけ)

  * Sphinx公式ドキュメントの翻訳
  * https://www.transifex.com/sphinx-doc/sphinx-doc-1_3/
  * sphinx.ext.napoleon のドキュメント翻訳
  * GoogleスタイルのdocstringをSphinxで解釈する拡張

* @yi01imagination (いわきゆうすけ)

  * Sphinx公式ドキュメントの翻訳
  * https://www.transifex.com/sphinx-doc/sphinx-doc-1_3/
  * 拡張API関連のドキュメント翻訳
  * envapiなど

* @tanishiking (たにぐちりきと)

  * Sphinxを始めてみる
  * LaTeX経由のPDF出力環境を作った
  * Djangoのドキュメント翻訳をやってみよう

* @shimizukawa (しみずかわ)

  * transifex-clientのPRに返信来てたのでコメント返した
  * sphinx-intl のバージョンアップ作業
  * 新しい参加者のサポート


.. figure:: sprint3.*
   :width: 500

   Sphinxスプリントチーム


Sphinx-users.jp では、このように集まって行うHack-a-thonイベントと、お茶会イベントをそれぞれ月に1回開催しています。Hack-a-thonは休日の日中開催しており、今回のスプリントと同じように各参加者がそれぞれ題材を持ち寄って、Sphinxやドキュメンテーション、翻訳などについて質問や雑談をしながら各自作業しています。お茶会は平日夜に2時間ほどファミレスで開催しており、雑談や情報交換を中心に行っています。気楽なイベントですので、ぜひご参加下さい。詳しくは :doc:`../index` を参照してください。


