====================
LaTeX経由でのPDF作成
====================

:日時: 2010/10/10
:作者: 渋川よしき/小宮健
:最終更新: 2012/03/25

Sphinxの標準機能に、LaTeXを経由したPDF出力が入っています。英語の文章であれば簡単に成功しますが、日本語ではスムーズに行かないところもあります。

ここでは日本語ならではの情報を集約します。

.. note::

   この説明手順はMacOSX 11.3(64bit)、Debian/GNU Linux 6.0.3(32bit)で検証しています。

.. warning::
   追加情報や、協力してくれる方がいらっしゃいましたら、 `Sphinx-users <http://sphinx-users.jp/howtojoin.html>`_ までご連絡ください。

TeXLive2011/MacTeX2011のインストール
====================================

.. image:: texlive_web.png

TeX系の処理系には色々あります(pLaTeX、tetex、xetex、pdflatexなど)が、現在活発に開発されていているのが、
`TeXLive <http://tug.org/texlive/>`_ というディストリビューションです。
Windows、Linux、FreeBSDなどに対応しており、環境の作りやすさを考慮して、これを使って説明をしていきます。

.. note::

   MacOS 向けには `MacTeX <http://www.tug.org/mactex/>`_ というディストリビューションが提供されているのでこちらを利用します。

TeXの処理系の中には、アスキー・メディアワークスが開発を行っていて、日本語の扱いに長けたpTeX/pLaTeXがあります。
TeXLive2010からは、このpLaTeXも内蔵されたため、簡単に品質の高い日本語のドキュメントが作れるようになりました。

.. warning::

   LinuxのパッケージやMacPortsでインストールできるTeXLiveは、今のところ2009までです。
   この説明で使うplatexが追加されたのは2010以降になるため、もしTeXLive 2009で同じように実行したい場合には、
   `pTeXLive <http://tutimura.ath.cx/ptexlive/>`_ を追加でインストールしてください。

インストーラのダウンロード
--------------------------

開発元が推奨しているのは、ネットワークインストールです。下記のページから、install-tl.zip (Windows用)か、install-tl-unix.tar.gzをダウンロードして、展開してください。

* `TeXLive 2011のネットワークインストーラ <http://www.tug.org/texlive/acquire-netinstall.html>`_

DVDイメージ(2GBある)もあります。社内から外にアクセスしにくいなどの環境でインストールする場合はこちらが良いでしょう。
bittorrentを使ってダウンロードすることもできます。ダウンロードしたら、DVDに焼いたり、イメージファイルをマウントしてください。

* `DVDイメージダウンロード <http://www.tug.org/texlive/acquire-iso.html>`_

インストール
------------

プログラムを実行してインストールしてください。WindowsではGUIのインストーラが、それ以外ではコンソールのインストーラが起動しますが、使い勝手に差はありません。

基本的にはデフォルトの設定のままで大丈夫です。もしインストール先を換えたい場合などは、インストーラの最初の設定画面で設定できます。

.. image:: texlive.png

Sphinxへ日本語PDFパッチを適用する
=================================

Sphinx(現時点の最新版 1.1.3)に打田さんが開発された `日本語 PDF まわりの修正 <http://www.python.jp/pipermail/sphinx-users/2011-November/000173.html>`_ を適用します。

パッチ適用済みのSphinxをインストールする
----------------------------------------

もしご利用の環境にまだ Sphinx がインストールされていない場合は
パッチ適用済みの Sphinx パッケージを利用してインストールします。

easy_install コマンドに以下の URL を指定して Sphinx パッケージのインストールを行います。

.. code-block:: bash

   $ easy_install https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.1.2sphinxjp-latex.tar.gz

パッチを適用する
---------------- 

既に Sphinx がインストールされている場合は
打田さんの修正内容を `パッチ化したもの <https://bitbucket.org/sphinxjp/website/downloads/uchida-sphinxjp-japanese-latex.patch>` を
インストール済みの Sphinx に適用します。

.. code-block:: bash

   $ cd /tmp
   $ wget https://bitbucket.org/sphinxjp/website/downloads/uchida-sphinxjp-japanese-latex.patch
   $ cd /usr/lib/pymodules/python2.6/sphinx
   $ sudo patch -p1 < /tmp/uchida-sphinxjp-japanese-latex.patch
   patching file sphinx/quickstart.py
   patching file sphinx/texinputs/Makefile
   patching file sphinx/texinputs/fncychap.sty
   patching file sphinx/texinputs/sphinx.sty
   Hunk #3 succeeded at 430 with fuzz 1 (offset -3 lines).
   Hunk #4 succeeded at 502 (offset -3 lines).
   patching file sphinx/writers/latex.py

Sphinxプロジェクトの作成
========================

日本語PDFパッチを適用したあと、 `sphinx-quickstart` コマンドでSphinxプロジェクトを作成します。
もし既存のプロジェクトがある場合でも、新規にプロジェクトを作成して
rst ファイルやテンプレート、静的ファイルなどを上書きコピーしてください。

Sphinxプロジェクトの設定変更
============================

`sphinx-quickstart` コマンドで生成した ``conf.py`` に日本語用の設定を書き加えます。

.. code-block:: python

   # 言語の設定
   language = 'ja'

   # LaTeX の docclass 設定
   latex_docclass = {'manual': 'jsbook'}

ビルドの実行
============

``make latexpdfja`` と実行すれば、ファイルが生成されます。

.. code-block:: bash

   $ make latexpdfja
   sphinx-build -b latex -d build/doctrees   source build/latex
   Making output directory...
   Running Sphinx v1.1.2
   loading translations [ja]... done
   loading pickled environment... not yet created
   building [latex]: all documents
   updating environment: 1 added, 0 changed, 0 removed
   reading sources... [100%] index
   
   looking for now-outdated files... none found
   pickling environment... done
   checking consistency... done
   processing test.tex... index
   resolving references...
   writing... WARNING: no Babel option known for language 'ja'
   done
   copying TeX support files... done
   build succeeded, 1 warning.
   Running LaTeX files through platex and dvipdfmx...
   make -C build/latex all-pdf-ja
   (略)
   pdflatex finished; the PDF files are in build/latex.

お疲れ様でした！これでPDFファイルができました。
ビルドディレクトリ配下のlatexディレクトリにPDFファイルが生成されているはずです。

.. note::

   このPDFはフォント埋め込みタイプではありませんので、Kindleなどに入れると文字が出ません。
   フォント埋め込みはdvipdfmxの設定で行えるようになるはずです。検証したらまた追記します。

変更履歴
========

:2010/10/10: 初版(渋川)
:2012/03/25: 打田さんの Sphinx パッチおよび TeXLive 2011 をベースに記事を更新
