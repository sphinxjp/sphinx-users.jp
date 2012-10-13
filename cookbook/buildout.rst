=========================================
buildout を利用して Sphinx 環境を構築する
=========================================

複数人で Sphinx 文章を扱う場合、ネックになりがちなのが各々のマシンに Sphinx をインストールすることです。
特に、Sphinx に加えて外部の Sphinx 拡張を利用している場合は混乱が生じがちです。

ここでは開発環境構築ツールである buildout を利用して、Sphinx 環境の構築を行います。

buildout の導入
===============

buildout は以下の 2つのファイルで構成されます。

bootstrap.py
   buildout の実行環境を構築するスクリプトです。
   各マシン上で最初に 1度だけ実行します。

   Web 上に公開されているものを wget コマンドで取得します::

      $ wget 'https://raw.github.com/buildout/buildout/1.6.x/bootstrap/bootstrap.py'

buildout.cfg
   環境定義のための設定ファイルです。
   インストールするパッケージなどを記述することができます。
   vi などのテキストエディタで作成します。


buildout を導入するには bootstrap.py をダウンロードした後、buildout.cfg を作成します。
Sphinx を利用するには、buildout.cfg に以下の内容を記述します。

.. code-block:: ini

   [buildout]
   parts = doc

   [doc]
   recipe = zc.recipe.egg
   eggs =
        sphinx
   interpreter = py


buildout を使って環境を構築するには、この2ファイルを同じディレクトリに入れて以下のコマンドを実行します。

.. code-block:: bash

   $ python bootstrap.py
   Downloading http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg
   Creating directory '/home/tkomiya/tmp/bin'.
   Creating directory '/home/tkomiya/tmp/parts'.
   Creating directory '/home/tkomiya/tmp/eggs'.
   Creating directory '/home/tkomiya/tmp/develop-eggs'.
   Getting distribution for 'setuptools'.
   Got setuptools 0.6c12dev-r88846.
   Generated script '/home/tkomiya/tmp/bin/buildout'.
   $ bin/buildout
   Getting distribution for 'zc.recipe.egg'.
   Got zc.recipe.egg 1.3.2.
   Uninstalling doc.
   Installing doc.
   Getting distribution for 'sphinx'.
   Got Sphinx 1.1.3.
   Getting distribution for 'docutils'.
   warning: no files found matching 'MANIFEST'
   warning: no files found matching '*' under directory 'extras'
   warning: no previously-included files matching '.cvsignore' found under directory '*'
   warning: no previously-included files matching '*.pyc' found under directory '*'
   warning: no previously-included files matching '*~' found under directory '*'
   warning: no previously-included files matching '.DS_Store' found under directory '*'
   zip_safe flag not set; analyzing archive contents...
   docutils.writers.pep_html.__init__: module references __file__
   docutils.writers.s5_html.__init__: module references __file__
   docutils.writers.odf_odt.__init__: module references __file__
   docutils.writers.latex2e.__init__: module references __file__
   docutils.writers.html4css1.__init__: module references __file__
   docutils.parsers.rst.directives.misc: module references __file__
   Got docutils 0.9.1.
   Generated script '/home/katsuwo/tmp/bin/sphinx-apidoc'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-build'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-quickstart'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-autogen'.
   Generated interpreter '/home/katsuwo/tmp/bin/py'.

コマンドを実行すると bin/ 以下に Sphinx の各種スクリプトがセットアップされます。

.. code-block:: bash

   $ ls bin/
   buildout  py  sphinx-apidoc  sphinx-autogen  sphinx-build  sphinx-quickstart


ここからは通常の Sphinx の利用方法にしたがって、ドキュメントを書いていくことができます。
通常は Sphinx プロジェクトをバージョン管理するなどして共有しますが、
これに加えて buildout の 2ファイルも共有することで、簡単に環境を再現することができます。

なお、sphinx-quickstart で生成される Makefile, make.bat は sphinx-build コマンドのパス指定がないため、
以下のように書き換えます。

.. code-block:: diff

   --- Makefile.orig
   +++ Makefile
   @@ -3,7 +3,7 @@
 
    # You can set these variables from the command line.
    SPHINXOPTS    =
   -SPHINXBUILD   = sphinx-build
   +SPHINXBUILD   = bin/sphinx-build
    PAPER         =
    BUILDDIR      = _build
 
   --- make.bat.orig
   +++ make.bat
   @@ -3,7 +3,7 @@
    REM Command file for Sphinx documentation
 
    if "%SPHINXBUILD%" == "" (
   -       set SPHINXBUILD=sphinx-build
   +       set SPHINXBUILD=bin/sphinx-build
    )
    set BUILDDIR=_build
    set ALLSPHINXOPTS=-d %BUILDDIR%/doctrees %SPHINXOPTS% .

Sphinx 拡張や拡張テーマを利用する
=================================

Sphinx 拡張や拡張テーマを使う場合は、
buildout.cfg にパッケージ名を追記することで拡張パッケージをインストールすることができます。
例として、sphinxjp.themes.bizstyle を利用する場合は buildout.cfg を以下のように書き換えます。

.. code-block:: ini

   [buildout]
   parts = doc

   [doc]
   recipe = zc.recipe.egg
   eggs =
        sphinx
        sphinxjp.themes.bizstyle
   interpreter = py

buildout.cfg を書き換えた後、再度 bin/buildout コマンドを実行します。

.. code-block:: bash

   $ bin/buildout
   Uninstalling doc.
   Installing doc.
   Getting distribution for 'sphinxjp.themes.bizstyle'.
   Got sphinxjp.themes.bizstyle 0.1.5.
   Getting distribution for 'sphinxjp.themecore'.
   Got sphinxjp.themecore 0.1.3.
   Generated script '/home/katsuwo/tmp/bin/sphinx-apidoc'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-build'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-quickstart'.
   Generated script '/home/katsuwo/tmp/bin/sphinx-autogen'.
   Generated interpreter '/home/katsuwo/tmp/bin/py'.

buildout コマンドにより sphinxjp.themes.bizstyle パッケージがインストールされました。
さらに依存関係のある sphinxjp.themecore もインストールされます。

あとは conf.py の設定を書き換えるだけで、Sphinx 拡張を利用することができます。

日本語 PDF パッチ適用済み Sphinx を利用する
===========================================

Sphinx 経由で PDF を出力したい場合は、以下のように buildout.cfg を書き換えることで
日本語 PDF パッチが適用された Sphinx を利用することができます。

.. code-block:: ini

   [buildout]
   find-links = https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.1.3sphinxjp-latex.tar.gz
   versions = versions
   parts = doc

   [doc]
   recipe = zc.recipe.egg
   eggs =
       sphinx
       sphinxjp.themes.bizstyle
   interpreter = py

   [versions]
   sphinx = 1.1.3sphinxjp-latex
