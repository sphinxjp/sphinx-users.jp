========================
SphinxでPDFファイル作成
========================

:日時: 2010/09/19
:作者: 池 徹
:最終更新: 2010/09/19

Sphinxは `rst2pdf <http://code.google.com/p/rst2pdf/>`_ と連携することによりPDFを出力することができます。


rst2pdfのインストール
=====================

SphinxでPDFを作成するためには `rst2pdf <http://code.google.com/p/rst2pdf/>`_ をインストールします。通常の ``easy_install`` (もしくはdistribute, pip)を利用したインストール方法でインストールできます。

.. code-block:: bash

   $ sudo easy_install rst2pdf


.. なお、rst2pdfの依存ライブラリは下記のとおりです。 ``easy_install`` でインストールした際には依存ライブラリも解消してくれます。

.. - docutils
.. - reportlab
.. - Pygments

日本語フォントのインストール
=============================

例として、今回は `VLゴシックフォント <http://vlgothic.dicey.org/>`_ と `IPAフォント <http://ossipedia.ipa.go.jp/ipafont/>`_ をインストールします。

-------------------
VLゴシックフォント
-------------------

ダウンロード解凍後に、フォントディレクトリにコピーします。

.. code-block:: bash

   wget http://jaist.dl.sourceforge.jp/vlgothic/44715/VLGothic-20091202.zip
   #curl -O http://jaist.dl.sourceforge.jp/vlgothic/44715/VLGothic-20091202.zip
   unzip VLGothic-20091202.zip 
   cd VLGothic
   cp *.ttf /usr/share/fonts/

.. note::
   手元のFedora13ではVLGothicフォントが `/usr/share/fonts/vlgothic/` に既にインストール済みでした。


-----------
IPAフォント
-----------

ダウンロード解凍後に、フォントディレクトリにコピーします。

.. code-block:: bash

   wget http://info.openlab.ipa.go.jp/ipafont/fontdata/IPAfont00301.zip
   unzip IPAfont00301.zip
   cd IPAfont00301
   cp *.otf /usr/share/fonts/   


プロジェクトの作成
==================

通常通り、 :program:`sphinx-quickstart` コマンドを使ってドキュメントのプロジェクトフォルダの環境を設定します。
後はチュートリアルなどを見ながら、通常通りにSphinxを使ってドキュメントを書き上げていきます。make htmlを使ってプレビューをしながら書いていくのが良いでしょう。

PDFの設定を追加
================

:file:`conf.py` にPDF用の設定を自分で書き加える必要があります。

まずは、 `sphinx.ext.autodoc` と `rst2pdf.pdfbuilder` を :file:`conf.py` の `extensions` に追加します。

.. code-block:: python

   extensions = ['sphinx.ext.autodoc','rst2pdf.pdfbuilder']


次に、PDFの設定を追加します。

.. code-block:: python
  
   # -- Options for PDF output --------------------------------------------------

   # Grouping the document tree into PDF files. List of tuples
   # (source start file, target name, title, author, options).
   #
   # If there is more than one author, separate them with \\.
   # For example: r'Guido van Rossum\\Fred L. Drake, Jr., editor'
   #
   # The options element is a dictionary that lets you override 
   # this config per-document.
   # For example, 
   # ('index', u'MyProject', u'My Project', u'Author Name', 
   #  dict(pdf_compressed = True))
   # would mean that specific document would be compressed
   # regardless of the global pdf_compressed setting.
   
   pdf_documents = [ 
       ('index', u'MyProject', u'My Project', u'Author Name'),
   ]

   # A comma-separated list of custom stylesheets. Example:
   pdf_stylesheets = ['sphinx','kerning','a4','ja']

   # Create a compressed PDF
   # Use True/False or 1/0
   # Example: compressed=True
   #pdf_compressed = False

   # A colon-separated list of folders to search for fonts. Example:
   pdf_font_path = ['/usr/share/fonts']

   # Language to be used for hyphenation support
   pdf_language = "ja"
   
   # Mode for literal blocks wider than the frame. Can be
   # overflow, shrink or truncate
   #pdf_fit_mode = "shrink"

   # Section level that forces a break page.
   # For example: 1 means top-level sections start in a new page
   # 0 means disabled
   #pdf_break_level = 0

   # When a section starts in a new page, force it to be 'even', 'odd',
   # or just use 'any'
   #pdf_breakside = 'any'

   # Insert footnotes where they are defined instead of 
   # at the end.
   #pdf_inline_footnotes = True

   # verbosity level. 0 1 or 2
   #pdf_verbosity = 0

   # If false, no index is generated.
   #pdf_use_index = True

   # If false, no modindex is generated.
   #pdf_use_modindex = True

   # If false, no coverpage is generated.
   #pdf_use_coverpage = True

   # Documents to append as an appendix to all manuals.    
   #pdf_appendices = []

   # Enable experimental feature to split table cells. Use it
   # if you get "DelayedTable too big" errors
   #pdf_splittables = False

   # Set the default DPI for images
   #pdf_default_dpi = 72


.. note::

   詳細は、 `How to use rst2pdf <http://rst2pdf.googlecode.com/svn/trunk/doc/manual.txt>`_ の項目 ``Sphinx`` を参照にするとよいでしょう。


コマンドの追加
===============

:file:`Makefile` にPDFのコマンドを追加します。

.. code-block:: bash

   pdf:
       $(SPHINXBUILD) -b pdf $(ALLSPHINXOPTS) _build/pdf
       @echo
       @echo "Build finished. The PDF files are in _build/pdf."


スタイルシートの設定
=====================

作成したプロジェクトの直下に :file:`ja.json` を作成し設定を追加します。

.. code-block:: bash

   {
       "embeddedFonts" :
       [[
           "VL-Gothic-Regular.ttf",
	   "VL-PGothic-Regular.ttf",
	   "ipam.otf",
	   "ipag.otf",
	   "ipagp.otf",
	   "ipamp.otf"
       ]],
       "fontsAlias" : {
           "stdFont": "VL-PGothic-Regular",
	   "stdBold": "VL-PGothic-Regular",
	   "stdItalic": "VL-PGothic-Regular",
	   "stdMono": "VL-Gothic-Regular"
       },
       "styles" : [
           ["base" , {
	       "wordWrap": "CJK"
	   }],
    	   ["literal" , {
	       "wordWrap": "None"
    	   }]
        ]
    } 


ビルドと確認
============

いつものように ``make`` します。ビルダー名は ``pdf`` になります。

.. code-block:: bash

   (sphinx10)MacBook:chapter10 shibu$ make pdf
   sphinx-build -b epub -d _build/doctrees   . _build/pdf
   Making output directory...
   Running Sphinx v1.0pre
   (中略)
   writing expert_python_programming_sample.epub file...

   Build finished. The epub file is in _build/epub.

:file:`_build/pdf/` フォルダの下に `expert_python_programming_sample.epub` ファイルが作成されます。


変更履歴
========

:2010/09/19: 初版
