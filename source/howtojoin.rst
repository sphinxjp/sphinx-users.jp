==============
参加するには？
==============

#sphinxjpではメーリングリストへの参加＝コミュニティへの参加とみなします。入会金や会費などは一切かかりません。

参加に際しては :doc:`sphinx-users.jp 会則 <regulations>` を確認して下さい。

.. contents::

================
必要なスキルは？
================

よく誤解される内容として「SphinxはPython(パイソン)というプログラミング言語で書かれているから、Pythonを知らないと使いこなせない」というものがあります。

Sphinxは確かにPythonで書かれていますが、Sphinxの拡張機能を作ったり、Sphinx本体のバグ修正や機能拡張をしたいと思わない限りは不要です。下記に、コミュニティで活動したい内容ごとの必要なスキルをまとめます。

ここで挙げた各種知識や能力などは一つの目安です。コミュニティでの活動を通じて、これから学ぶことも可能ですが、熱意と勇気は事前にご用意いただく必要があります。

.. list-table::
   :header-rows: 1

   - * 何がしたいか？
     * 必要なスキル
   - * ドキュメント作成の情報交換がしたい
     * * ドキュメントを書く能力と熱意
       * Sphinx(reStructuredText)を書く能力
       * 黒い画面(コマンドプロンプト)を怖がらない勇気
       * メーリングリスト等で質問・回答する勇気
       * イベントなどに参加する勇気

   - * 翻訳に関する情報交換がしてみたい。
     * * Sphinx(reStructuredText)を書く能力
       * 黒い画面(コマンドプロンプト)を怖がらない勇気
       * 翻訳対象に関する知識
       * 日本語を書く能力
       * 翻訳元の言語(英語など)を読む能力
       * イベントなどに参加する勇気      
       * メーリングリスト等で質問・回答する勇気

   - * Sphinxの拡張機能が作りたい
     * * Sphinxに関する知識
       * 拡張機能を作る熱意
       * Pythonでプログラミングする能力
       * 英語の資料を読む能力 [#]_
       * 英語のドキュメントを作成する能力 [#]_

   - * #sphinxjpのサイトの間違いを見つけたので訂正したい
     * * `Bitbucket <http://bitbucket.org>`_ へのユーザ登録
       * `#sphinxjpのIssue <https://bitbucket.org/sphinxjp/website/issues?status=new&status=open>`_ にチケットを投稿する勇気

   - * 自分のノウハウを#sphinxjpのサイトに公開したい
     * * ご自分のノウハウ
       * Bitbucketへのユーザ登録
       * Mercurial(hg)を使う能力
       * Bitbucketでforkして、PullRequestを出す勇気 [#]_

   - * 採用事例に自分の例も追加して欲しい
     * * 採用された事例やテンプレート 
       * Bitbucketへのユーザ登録
       * Mercurial(hg)を使う能力
       * Bitbucketでforkして、PullRequestを出す勇気

.. rubric:: 脚注
.. [#] 現状ではSphinxのソースや、Docutilsの英語資料を読む必要があります。
.. [#] 作ったら世界に公開しましょう！英語の確認などはメンバー間で協力することもできます。
.. [#] 詳しい説明は :ref:`combitbucket` に書かれています。

==================
コミュニケーション
==================

Sphinx-Users.jpでコミュニティとして用意しているコミュニケーションチャンネルは下記の通りです。

.. _mailinglist:

メーリングリスト
----------------

Sphinx-Users.jpでは、python.jpのサーバをお借りしてメーリングリストを運用しています。日本語で投稿できますので、Sphinxの使い方の質問、PR、ご意見などに活用ください。

* `メーリングリスト <https://groups.google.com/forum/#!forum/sphinx-users-jp>`_ (2016年～)
* `2016年以前のメーリングリストの過去ログ <http://www.python.jp/pipermail/sphinx-users/>`_

メーリングリストとしては `Sphinx開発元のML(英語) <http://groups.google.com/group/sphinx-dev>`_ もあります。こちらはSphinx-Users.jpの運営ではありませんが、拡張機能を開発した場合のPRなどはこちらでも行う方が良いでしょう。

Twitter
-------

Sphinx-Users.jpの公式ハッシュタグは `#sphinxjp <http://twitter.com/#!/search/%23sphinxjp>`_ です。このハッシュタグを付けて呟いたり、質問をすると、メンバーから回答があるかもしれません。ただし、Twitterの場合は流量が多いと流れてしまうため、質問する場合にはメーリングリストの方が確実です。

Sphinx-Users.jpの情報を呟く `@sphinxjp <http://twitter.com/#!/sphinxjp>`_ 公式アカウントもあります。

.. _slack:

Slack
-----

Sphinx-users.jp コミュニティの公式チャットとしてSlackを運用しています。
Slackに参加を希望される方は https://sphinxjp.herokuapp.com/ より登録をお願いします。

Q & A
------

`スタックオーバーフロー <http://ja.stackoverflow.com/questions/tagged/sphinx>`__ を公式の質問サイトとします。MLで聞くのはコワイという方は、 ``sphinx`` タグを付けて、こちらもご利用ください。

.. _combitbucket:

Bitbucket
---------

Bitbucketはソースコード管理システム上に作られたSNSです。Sphinx-Users.jpのウェブサイトもSphinxで作成されていますが、 `このソースコードはすべてBitbucket <https://bitbucket.org/sphinxjp/website>`_ に載っています。ここにコミットすると、毎時0分にsphinx-users.jpのウェブサイト上でビルドされてウェブが更新されます。

Sphinx-Users.jpのウェブサイトにドキュメントを掲載したい場合には、MLなどで表明してもらえれば、コミット権を提供することもできますし、Sphinx-Users.jpのウェブサイトのリポジトリをフォークして、自分のリポジトリ上で編集を加えてから、pull-requestを投げることも可能です。

Pull Requestというのは、「こういう修正したから、本家の方で取り込んでください」という依頼を投げる仕組みです。もちろん、メールで通知することもできますが、BitbucketのPull Requestの仕組みを使うと、取り込み側は1ボタンで取り込むことができるというメリットがあります。今後のオープンソースの開発のスタンダードとなりうるワークフローです。

.. note::

   `Bitbucketのドキュメントの日本語訳 <http://confluence.atlassian.jp/pages/viewpage.action?pageId=25133116>`_ もあります。


