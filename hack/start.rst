==================
拡張開発最初の一歩
==================

:date: 2013/01/01
:author: 渋川よしき

拡張開発をするにはもろもろの準備が必要になります。残念ながら、拡張開発に関しては資料が充実しているとは言えない状態です。ソースコードを参照しなければならないケースも多いでしょう。

下記のものがあるのを前提としています。

* Pythonの知識(必須)
* Mercurialの知識(オプション)
* Bitbucketのアカウント(オプション)
* PyPIのアカウント(オプション)

ここでは、 `Rubyドメイン <https://bitbucket.org/birkenfeld/sphinx-contrib/src/978951438662c55de40902506752bd492da0ec8b/rubydomain?at=default>`_ をモデルケースとして説明しています。

ひな形を作る
============

まずは下記のリポジトリをフォークし、ローカルにクローンしましょう。もし、Bitbucketのアカウントがなく、Bitbucket上でソースコードを管理する予定がない場合、Githubなどを使いたい場合は、Bitbucketのページの右側のペイン内のDownloadと書かれているリンクでダウンロードするのでもかまいません。

https://bitbucket.org/birkenfeld/sphinx-contrib

クローン、もしくはダウンロードが完了したら、このリポジトリに含まれる ``make-ext.py`` を実行します。

.. code-block:: bash

   $ python make-ext.py
   Creating a new sphinx-contrib package
   Name: sampledomain (←名前を入れる)
   Author name: Yoshiki Shibukawa (←作者名を入れる)
   E-mail: yoshiki at shibu.jp (←メールアドレスを入れる)
   Created new package in directory sampledomain

これで、ひな形ができあがります。 ``setup.py`` や、 ``MANIFEST.in`` などのファイルもできあがります。

受け入れテストのドキュメントの作成
==================================

作成されたひな形のトップに ``test`` というフォルダを作り、Sphinxのドキュメントを作ります。

テスト用のドキュメントを実行する場合は、そのフォルダにある ``sphinxcontrib`` フォルダを参照する必要があるので、下記のコードを ``conf.py`` に追加します。

.. code-block:: py

   sys.path.insert(0, os.path.abspath('..'))
   extensions = ['sphinxcontrib.sampledomain']

このドキュメントには、これから追加する機能ができあがった場合を想定して文章を書いておきます。

ソースコードを作成
==================

``sphinxcontrib`` フォルダ内にソースコードを置きます。Nameに設定した名前 + ``.py`` が良いでしょう。

拡張機能を作成する場合は下記のものを参照することになるでしょう。

* `Sphinx本体の拡張の説明 <http://sphinx-users.jp/doc11/extensions.html>`_
* `他の人の作ったSphinx拡張 <https://bitbucket.org/birkenfeld/sphinx-contrib>`_
* `Sphinxのソースコード <https://bitbucket.org/birkenfeld/sphinx>`_
* `Docutilsのドキュメント及びソース <http://docutils.sourceforge.net/docs/index.html>`_

例えば、ビルダーの開発をするのであれば、Sphinx本体のビルダーのコードが役に立つでしょう。また、SphinxはDocutilsをベースとして、大規模ドキュメント向けの機能を追加して作られたシステムなので、ドキュメント(:doc:`XMLのようなツリー構造 </reverse-dict/system/doctree>`)のタグを操作して、情報を収集したり、新しいノードを追加する場合はDocutilsや、他に似たようなことをしている拡張機能が役に立ちます。

ドキュメントの作成
==================

作成されたひな形のトップに、 ``doc`` フォルダを作り、Sphinxのドキュメントを作ります。

おそらく、 ``.. rst:directive::`` ディレクティブと、 ``.. rst:role::`` ディレクティブを使ったリファレンスと、書き方のサンプルのドキュメントになるでしょう。

ドキュメントの方では、設定ファイルの項目を追加する場合は、Sphinx本体と同じように設定項目用のディレクティブとロールを ``conf.py`` で設定すると良いでしょう。

.. code-block:: py

   def setup(app):
       app.add_description_unit(
           'confval', 'confval',
           objname='configuration value',
           indextemplate='pair: %s; configuration value')

ライセンスは、BSDライセンスで問題なければ、 ``sphinxcontrib`` リポジトリのルートからコピーしていれておきましょう。

また、変更履歴をまとめた、 ``CHANGES`` ファイルも作りましょう。中身はreSTフォーマットで記述します。 ``doc/index.rst`` で次のように書けば、ライセンスと変更履歴をドキュメントにもコピペする必要がなくなり、変更箇所を一箇所に集約できます。

.. code-block:: rest

   ChangeLog
   =========

   .. include:: ../CHANGES

   License
   =======

   .. include:: ../LICENSE
      :literal:

ドキュメント、ライセンス、変更履歴ファイルは ``MANIFEST.in`` にも追加しておきましょう。

PyPIへの公開
============

ドキュメントを確認して、自分のローカル環境でインストールしてのテストも完了したら、PyPIにアップロードして世界中のSphinxユーザが利用できるようにしましょう。

登録名は、 ``sphinxcontrib-<パッケージ名>`` がよく使われます。

.. code-block:: bash

   $ python setup.py register sdist upload

ドキュメントもPyPIサイトにアップします。

.. code-block:: bash

   $ python setup.py upload_docs --upload-dir=/doc/_build/html/

詳しくは下記の書籍が参考になります。

* `エキスパートPythonプログラミング 5章 <http://www.amazon.co.jp/dp/4048686291>`_
* `Pythonプロフェッショナルプログラミング 7章 07-01 <http://www.amazon.co.jp/dp/4798032948>`_

