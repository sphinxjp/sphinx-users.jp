=======================
SphinxでPDFファイル作成
=======================

ドキュメントの成果物として、保存したり印刷したりする用途で好まれるのがPDFです。
SphinxではLaTeXを利用したPDF出力が可能です。

本ドキュメントは日本語で出力する場合についての手順を紹介します。

Sphinx で利用する TeXディストリビューション
=============================================

Sphinx で日本語文章を書く場合は文字コードに UTF-8が利用されるため、PDF を作成する際には UTF-8 対応版の pLaTeX である必要があります。
内部では ebb, mendex, platex, dvipdfmx の各コマンドを利用していますので、これらが利用できる環境を用意します。

.. image:: texlive_web.png

ここでは、Windows、macOS、Linux、FreeBSDなどに対応しており、環境の作りやすさを考慮して、 `TeX Live <http://tug.org/texlive/>`_ というディストリビューションを使って説明をしていきます。

.. note::

  TeXの処理系の中には、アスキー・メディアワークスが開発を行っていて、日本語の扱いに長けたpTeX/pLaTeXがあります。
  TeX Live 2010からは、このpLaTeXも内蔵されたため、簡単に品質の高い日本語のドキュメントが作れるようになりました。

TeX Liveのインストール
======================

.. toctree::
   :maxdepth: 1

   ./latex-install-tl
   ./latex-install-osx
   ./latex-install-linux
   ./latex-install-freebsd

Sphinxプロジェクトの作成/再作成
================================

`sphinx-quickstart` コマンドでSphinxプロジェクトを作成します。

もし既存のプロジェクトがある場合でも、新規にプロジェクトを作成して rst ファイルやテンプレート、静的ファイルなどを上書きコピーしてください。
これは、古いバージョンのSphinxで生成された :file:`conf.py` や :file:`Makefile` が 日本語出力に対応していないために上書き更新をするために行ないます。

.. note::

  既にindex.rstのコンテンツがある場合は、一旦退避して、sphinx-quickstart後に書き戻します。

Sphinxプロジェクトの設定変更
============================

`sphinx-quickstart` コマンドで生成した :file:`conf.py` に日本語用の設定を書き加えます。

.. code-block:: python

   # 言語の設定
   language = 'ja'

   # LaTeX の docclass 設定
   latex_docclass = {'manual': 'jsbook'}

.. note::
  この設定をしない場合、「しおり」が作成されなかったり、文字化けすることがあります。

ビルドの実行
============

``make latexpdf`` と実行すれば、ファイルが生成されます。

.. note::

   1.5より前のバージョンでは、latexpdfjaとタイプしていください。1.5以降は他の言語と仕組みが統合されたので末尾のjaは省略できるようになりました。互換性のためにjaを付けてもビルドはできます。

.. code-block:: bash

   $ make latexpdf
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

PDFの完成
============

ビルドディレクトリ配下のlatexディレクトリ(デフォルト設定の場合は _build/latex)にPDFファイルが生成されているはずです。

.. note::

   このPDFはフォント埋め込みではないため、Kindleなどで文字が表示されません。
   フォント埋め込みにはいくつかの方法があります。
   以下のコマンドで、TeX Liveの環境をフォント埋め込みに変更できます。

   .. code-block:: bash

      sudo kanji-config-updmap-sys auto

   埋め込みしない設定に戻すには以下を実行します。

   .. code-block:: bash

      sudo kanji-config-updmap-sys nofont


変更履歴
========

:2010/10/10: 初版(渋川)
:2012/03/25: 打田さんの Sphinx パッチおよび TeX Live 2011 をベースに記事を更新
:2014/01/26: MacPortsによるOSXへのインストール、FreeBSDへのインストールを追加し、記事を再構成&更新 (波田野)
:2017/02/23: ``make latexpdfja`` -> ``make latexpdf`` (渋川)
:2018/08/19: 古い情報を削除 (うさ)
:2019/11/29: LaTeXのインストールについてWindows、macOS、Linuxの情報を更新（hidaruma）
