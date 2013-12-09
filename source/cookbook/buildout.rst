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

      $ wget 'http://downloads.buildout.org/2/bootstrap.py'

buildout.cfg
   環境定義のための設定ファイルです。
   インストールするパッケージなどを記述することができます。
   vi などのテキストエディタで作成します。


buildout環境にSphinxをインストールするには、 bootstrap.py をダウンロードした後、空のディレクトリにbootstrap.pyを置いて以下のコマンドを実行します。


.. code-block:: bash

  $ python bootstrap.py init Sphinx

  Creating directory '/home/shimizukawa/sphinxenv/eggs'.
  Getting distribution for 'setuptools'.
  warning: no files found matching 'entries*' under directory 'setuptools/tests'
  warning: no files found matching 'Makefile' under directory 'docs'
  warning: no files found matching 'indexsidebar.html' under directory 'docs'
  Got setuptools 2.0.
  Upgraded:
    setuptools version 2.0;
  restarting.
  Generated script '/home/shimizukawa/sphinxenv/bin/buildout'.
  Getting distribution for 'zc.recipe.egg>=2.0.0a3'.
  Got zc.recipe.egg 2.0.1.
  Uninstalling py.
  Installing py.
  Getting distribution for 'sphinx'.
  Got sphinx 1.2.
  Getting distribution for 'docutils>=0.7'.
  warning: no files found matching 'MANIFEST'
  warning: no files found matching '*' under directory 'extras'
  warning: no previously-included files matching '.cvsignore' found under directory '*'
  warning: no previously-included files matching '*.pyc' found under directory '*'
  warning: no previously-included files matching '*~' found under directory '*'
  warning: no previously-included files matching '.DS_Store' found under directory '*'
  zip_safe flag not set; analyzing archive contents...
  docutils.parsers.rst.directives.misc: module references __file__
  docutils.writers.docutils_xml: module references __path__
  docutils.writers.html4css1.__init__: module references __file__
  docutils.writers.pep_html.__init__: module references __file__
  docutils.writers.s5_html.__init__: module references __file__
  docutils.writers.latex2e.__init__: module references __file__
  docutils.writers.odf_odt.__init__: module references __file__
  Got docutils 0.11.
  Getting distribution for 'Jinja2>=2.3'.
  warning: no files found matching '*' under directory 'custom_fixers'
  warning: no previously-included files matching '*' found under directory 'docs/_build'
  warning: no previously-included files matching '*.pyc' found under directory 'jinja2'
  warning: no previously-included files matching '*.pyc' found under directory 'docs'
  warning: no previously-included files matching '*.pyo' found under directory 'jinja2'
  warning: no previously-included files matching '*.pyo' found under directory 'docs'
  Installing Jinja2 2.7.1
  Caused installation of a distribution:
  jinja2 2.7.1
  with a different project name.
  Got jinja2 2.7.1.
  Getting distribution for 'Pygments>=1.2'.
  Got pygments 1.6.
  Getting distribution for 'markupsafe'.
  Installing MarkupSafe 0.18
  Caused installation of a distribution:
  markupsafe 0.18
  with a different project name.
  Got markupsafe 0.18.
  Generated script '/home/shimizukawa/sphinxenv/bin/sphinx-apidoc'.
  Generated script '/home/shimizukawa/sphinxenv/bin/sphinx-build'.
  Generated script '/home/shimizukawa/sphinxenv/bin/sphinx-quickstart'.
  Generated script '/home/shimizukawa/sphinxenv/bin/sphinx-autogen'.
  Generated interpreter '/home/shimizukawa/sphinxenv/bin/py'.


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


.. note::

   日本語 PDF パッチ適用済み Sphinx を利用する

   Sphinx-1.2より以前のバージョンを使用したい場合、かつ日本語PDF出力を行いたい場合は、以下のように buildout.cfg を書き換えることで日本語 PDF パッチが適用された Sphinx-1.1.3 を利用することができます。

   .. code-block:: ini

      [buildout]
      find-links = https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.1.3sphinxjp-latex.tar.gz
      versions = versions
      parts = py

      [py]
      recipe = zc.recipe.egg
      eggs =
          sphinx
          sphinxjp.themes.bizstyle
      interpreter = py

      [versions]
      sphinx = 1.1.3sphinxjp-latex
