Sphinx翻訳ハッカソン(2011/3/19)
================================

:日時: 2011/03/19 11:00～19:00
:場所: Lingr でオンライン開催

Sphinxやドキュメントに興味のある人が集まって、Sphinxを使ったり、みんなで翻訳しよう、というイベントです。

なお、翻訳するものは問いませんし、Sphinxを使わなくてもOKです。Sphinx拡張を作ったり、Sphinxを使い倒す方法を考えたり、比較的なんでもありなイベントです。一人でやっても、グループでやってもOK。一人では辛くてすぐ飽きちゃう活動も、みんなと一緒ならがんばれる！というのが目的です。Sphinxを使わずに翻訳する、という人でも歓迎です。

参加申込みはこちら -> `Sphinx + 翻訳 Hack-a-thon 2011.03 : ATND <http://atnd.org/events/13826>`_ (終了しました)

---------------------

今回は震災の影響を考慮し、オンラインで開催しました。Lingr(Webチャット)で行い、のべ18名のみなさんがオンラインでSphinxを拡張したり翻訳したりしました。


今日のHack-a-thonの成果
-------------------------

* 渋川
    * The Art of Communityの最後の原稿チェックをします。
    * 今日の成果は、The Art of Communityの訳文見直しを前書き～3章です。

* 清水川
    * 日本語ファイル名を使うとmake htmlできない問題をちょっと追ってみたい。
      元ネタ: http://twitter.com/kotakanbe/statuses/48632925364826113
    * Sphinxで日本語ファイル名／ディレクトリ名を扱えるようにするパッチが
      出来ました http://paste.pocoo.org/show/355901/
      人柱とコードレビューアを募集中です。
    * `togakushiさんから寄稿頂いたTips <https://bitbucket.org/togakushi/sphinx_docs/overview>`_
      をSphinx-users.jpに追加しました-> :doc:`../../cookbook/remotebuild/index`

* cocoatomo
    * python-doc-ja の翻訳を進めます
      http://code.google.com/p/python-doc-ja/issues/list
    * 余力があれば diff の改良をして, 単語単位での差分を見易くするツールも
      作ります
    * configparser.rst の翻訳の成果
      http://code.google.com/p/python-doc-ja/source/detail?r=703121b7c6358161ad18ccb773f6f84705340e70

* Shoji Kumagai
    * Solr1.4 Enterprize Server の第２章 第１節「MusicBrainz」まで訳終了

* tk0miya
    * いつもどおり blockdiag など sphinx 周辺ツールをいじってます。
    * PNG アイコンをアップロードするとなぜか blockdiag でレンダリングを
      始める仕組み
      http://blockdiag.appspot.com/upload/?pict_id=aglibG9ja2RpYWdyDQsSB1BpY3R1cmUYAQw
      (SVG のレンダリングにちょっと時間がかかります)
    * blockdiag の dots 風ラッパーを作りました。http://blockdiag.appspot.com/upload/?pict_id=aglibG9ja2RpYWdyDgsSB1BpY3R1cmUY0Q8M
    * そのあと VPS の設定をずっと進めてました。

* takanori
    * 最近なにもできていないPlone Developer Manualの翻訳をすすめるかも?
      って感じです

* ryoaita
    * OpenGL MathmaticsというライブラリのManualの翻訳をしたいと思います。
      http://glm.g-truc.net/
    * OpenGL MathematicsのDocumentを第三章冒頭まで粗訳しました。
      https://bitbucket.org/__aita__/glm-doc-ja

* hokorobi
    * Sphinxと全然関係なくFreeplaneの翻訳をやります。
      http://freeplane.sourceforge.net/preview/
      こっちのプレビュー版の翻訳をやります。

    * http://freeplane.sourceforge.net/wiki/index.php/Main_Page
      こちらが Wiki です。

    * http://bazaar.launchpad.net/~hokorobi/+junk/Freeplane-ja-003/files
      の Resources_ja.properties が成果物です。
      確認作業がほとんどで変更箇所はちみっとだけ。

* ymotongpoo
    * 今日はLearn You Some Erlangの翻訳続きと、飽きたらFabric 1.0.0の
      ドキュメント翻訳します。

* aohta
    * 翻訳じゃないですが、noseやってます。
    * nose 実行するときに、src/ test/ 分けてて、PYTHON_PATHが通っていない
      ときにどうしようね。的なときの解決方法などをまとめてました。

        * nose 実行するときに、src/ test/ 分けてて、PYTHON_PATHが通って
          いないときにどうしようね。的なときの解決方法などをまとめてました。
        * nose.main() を実行するrun.py 書いてそのなかで、sys.path 通せが
          主流ぽかったです。sphinx もそうだったし。
        * OS 依存とかしないし、一番いいのかなと。
          export とかは環境依存しちゃいますしね。 人によってはおかしくなるし。

* Taku Shimizu
    * 前回に続いてRen'Pyの翻訳を進めるつもりです。

