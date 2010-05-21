================================
SphinxでかんたんePubファイル作成
================================

:日時: 2010/05/21
:作者: 渋川よしき

Sphinxの1.0からは、ePubファイルのビルドができるようになります。ePubファイルというのは、iPadやソニーの電子ブックリーダーなどで利用できる、電子ブックのフォーマットです。原理的にはHTMLに、決まった形式のメタデータを含むファイルを追加して、zipで固めて拡張しをepubにしたものですが、Sphinxを使えば簡単に出力することができます。

.. note::
   iPadでの表示、インストールの仕方は @takabow に協力いただきました。ありがとうございます。

.. warning::
   5/21現在、Sphinx 1.0は開発中です。まだリリースされていないため、不具合などによって動作に支障がある場合があります。

Sphinx 1.0のインストール
========================

まずはSphinx 1.0(開発版)をインストールします。通常の ``easy_install`` (もしくはdistribute, pip)を利用したインストールでは、最新安定版(0.6系)がインストールされてしまうため、手動でインストールする必要があります。

.. image:: bitbucket.png
   :width: 400pt

ダウンロードをするには、 http://bitbucket.org/birkenfeld/sphinx にある、Sphinxのリポジトリの最新のコードを取得するか、Mercurialを利用して次のようにタイプしてダウンロードしてください。

.. code-block:: bash

   $ hg clone https://shibu@bitbucket.org/birkenfeld/sphinx

ファイルが展開できたら、コマンドラインから次のように実行してインストールしてください。

.. code-block:: bash

   $ sudo python setup.py install

必要なファイルも取得してインストールしてくれます。これで準備完了です。

.. note::

   これをやってしまうと、安定版の0.6系を上書きしてしまい、通常の利用に影響を与える可能性がありますので、virtualenv、できれば virtualenvwrapper(Windowsでは使えません)を利用してください。

   もしもvirtualenvwrapperを使い、sphinx10という環境を作ってその中にインストールすれば、必要なときだけ次のようにコマンドを実行すると、その環境を一時的に利用することができます。開発版のライブラリを利用するときは環境をこのように分離することをおすすめします。

   .. code-block:: bash

      $ workon sphinx10

プロジェクトの作成
==================

通常通り、 :program:`sphinx-quickstart` コマンドを使ってドキュメントのプロジェクトフォルダの環境を設定します。ただし、1.0になると、いくつかビルダーの選択肢が増えるとともに、いくつかオプションが変わっていますので、既存のドキュメントをePub化したい場合にも、 :program:`sphinx-quickstart` を実行して :file:`Makefile` などを作り直すことをおすすめします。なお、現在のバージョンでは生成される :file:`conf.py` はほぼ変わっていませんが、これから手が加わる可能性もあります(後からマニュアルを見ながら追加すればいいので問題はありません)。

後はチュートリアルなどを見ながら、通常通りにSphinxを使ってドキュメントを書き上げていきます。make htmlを使ってプレビューをしながら書いていくのが良いでしょう。

ePubの設定を追加
================

次に、 `ePubのオプション <file:///Users/shibu/work/sphinx-docjp/docjp/_build/html/config.html#epub>`_ を見ながら、 :file:`conf.py` にePub用の設定を追加していきます。現時点の :program:`sphinx-quickstart` は、 :file:`conf.py` にこれらのオプションの追加をしてくれないため、自分で書き加える必要があります。

次のリストは、ePub関連の、生成されるファイルに直に効いてくるオプションの一覧です。

:epub_basefile: ePubファイルの名前になります。省略すると生成されなくなりますので注意。
:epub_theme: テーマファイルです。デフォルトは ``epub`` です。
:epub_tocdepth: 索引の深さを指定します。文書量にもよりますが、2〜3が適当でしょう。

次のリストは、ePubのページ構成に変更を与えるオプションです。

:epub_pre_files: 文章のページの前に埋め込むファイル群
:epub_post_files: 文章のページの後ろに埋め込むファイル群
:epub_exclude_files: ePub化するときには除外するファイル群

次のリストは、メタデータとして書き込まれるオプションです。

:epub_title: ドキュメントのタイトルです。iPadの先頭ページに埋め込まれます。
:epub_author: ドキュメントの著者名です。iPadの先頭ページに埋め込まれます。
:epub_language: 言語
:epub_publisher: 出版社
:epub_copyright: 著作権
:epub_identifier: 識別子。ISBN, URLなど。
:epub_scheme: 識別子の種類。 ``ISBN`` か ``URL``
:epub_uid: ユニークな識別子。

Expert PythonのサンプルePubを生成する :file:`conf.py` では次のように設定しています。

.. code-block:: python

   project = u'エキスパートPythonプログラミング 10章サンプル'
   epub_title = project

   copyright = u'Packt Publishing 2008, ASCII MEDIA WORKS Inc., Copyright 2010'
   epub_author = u'2010, Tarek Ziade著、稲田直哉、渋川よしき、清水川貴之、森本哲也訳'

   epub_basename = 'expert_python_programming_sample'
   epub_language = u'ja'
   epub_publisher = u'Packt Publishing / アスキー・メディアワークス'
   epub_identifier = u'http://ascii.asciimw.jp/books/books/detail/978-4-04-868629-7.shtml'
   epub_scheme = 'URL'
   epub_tocdepth = 3

刊行物であれば ``epub_identifier`` はISBNになりますが、あくまで10章サンプルと、本そのものは違うということで、ここでは書籍情報のURLを設定しています。

.. warning::
   現時点のバージョンでは、 ``language`` オプションを ``'ja'`` に設定するとエラーになります。

ビルドと確認
============

いつものように ``make`` します。ビルダー名は ``epub`` になります。

.. code-block:: bash

   (sphinx10)MacBook:chapter10 shibu$ make epub
   sphinx-build -b epub -d _build/doctrees   . _build/epub
   Making output directory...
   Running Sphinx v1.0pre
   (中略)
   writing expert_python_programming_sample.epub file...

   Build finished. The epub file is in _build/epub.

:file:`_build/epub/` フォルダの下に `expert_python_programming_sample.epub` ファイルが作成されます。

PC上で確認するには、PC用のePubビューアを利用します。ここでは、Python製のオープンソース版電子ブック用iTunesとも言うべき、 `Calibre <http://calibre-ebook.com/>`_ を利用しました。

.. note::
   なぜかAdobe Digital Editionでは文字化けしてしまい、読むことができませんでした。

.. warning::
   電子ブックなのでKindleビューアを利用したくなるかもしれませんが、KindleはePubではなく、別形式(azw/mobi)を利用しているため利用できません。

.. image:: calibre_library.png
   :width: 400pt

ライブラリのページにドラッグ＆ドロップすると追加されます。追加されたドキュメントを右クリックして、 ``View -> View`` を選ぶか、選択状態でキーボードの ``V`` を叩くと、表示されるようになります。

.. image:: calibre_viewer.png
   :width: 350pt

iPadへのインストールと表示
==========================

iPadに入れるには、iPadをコンピュータに接続します。次にiTunesを開き、接続したiPadの ``ブック`` というフォルダにePubファイルをドラッグ＆ドロップします。

.. image:: itunes.png
   :width: 450pt

iPadのiBooksを起動すると、ライブラリに追加されています。これで後から読むことができます。

.. image:: ibooks.jpg
   :width: 450pt

.. image:: ipad.jpg
   :width: 450pt



