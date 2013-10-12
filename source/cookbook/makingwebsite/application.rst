作成したテーマを適用する
===========================
作成したオリジナルテーマをドキュメントで利用する場合には、3つの方法があります。

.. contents::
   :local:


1. html_theme_pathに指定したディレクトリにテーマディレクトリ置く
----------------------------------------------------------------

この方法の利点は、ドキュメントを書きながらテーマをどんどん変更していくことができる事です。他のドキュメントに流用する場合、テーマディレクトリをコピーして使う事になります。

ドキュメントのディレクトリに ``_themes`` を作成します（他の名前でも構いません）。この下にmythemeを置きます。ディレクトリ構造は以下のようになります::

   sphinxdoc/
      +--- conf.py
      +--- *.rst
      +--- _themes/
              +--- mytheme/
              |       +--- theme.conf
              |       +--- layout.html
              |       +--- static/
              +--- other_theme/

次に、conf.pyを以下のように設定します::

   html_theme_path = ['_themes']
   html_theme = 'mytheme'


2. html_theme_pathに指定したディレクトリにzip圧縮したテーマを置く
-----------------------------------------------------------------

この方法の利点は、テーマのzipファイルをサイトなどに公開しておけば、利用者はそのzipファイルをダウンロードして簡単にそのテーマを使うことができる事です。
また、テーマディレクトリにzipファイルを同梱してソースコード管理に含めても良いでしょう。

ドキュメントのディレクトリに ``_themes`` を作成します（他の名前でも構いません）。この下にmytheme.zipを置きます。ディレクトリ構造は以下のようになります::

   sphinxdoc/
      +--- conf.py
      +--- *.rst
      +--- _themes/
              +--- mytheme.zip
              +--- other_theme/

このとき、mytheme.zipの中身は以下の構成にしておきます::

   mytheme.zip
      +--- theme.conf
      +--- layout.html
      +--- static/


次に、conf.pyを以下のように設定します::

   html_theme_path = ['_themes']
   html_theme = 'mytheme'


3. テーマをPythonパッケージ化し、インストール、公開する
-------------------------------------------------------

この方法の利点は、テーマを環境にインストールできる事です。Sphinxのセットアップ手順などが自動化されている場合、その手順にテーマパッケージのインストールを含めておくことができます。例えば ``pip install Sphinx mytheme`` のようにインストールできます。欠点は、テーマパッケージをインストールしていない環境ではドキュメントをビルドできない事です。そのドキュメント特有のテーマであれば、ドキュメントのテーマディレクトリに同梱したほうが良いでしょう。

.. note::

   この方法はSphinx-1.2以降で使用できます。
   Sphinx-1.2以前の場合でも、 `sphinxjp.themecore`_ を使えばパッケージ化されたテーマを使用できます。

.. _sphinxjp.themecore: https://pypi.python.org/pypi/sphinxjp.themecore


ここではmythemeというPythonパッケージを作成する例を紹介します。
実際には他で使われていない、どんなテーマか分かる名前にするべきでしょう。

ディレクトリ構成は以下のようになります::

   mytheme/
      +--- setup.py
      +--- mytheme.py
      +--- MANIFEST.in
      +--- themes/
              +--- mytheme/
                      +--- theme.conf
                      +--- layout.html
                      +--- static/

setup.py::

   from setuptools import setup

   setup(
       name = 'mytheme',
       version = '1.0.0',
       author = 'yourname',
       author_email = 'yourname@example.com',
       py_modules = ['mytheme'],
       entry_points = {
           'sphinx_themes': [
               'path = mytheme:get_path',
           ],
       },
   )

mytheme.py::

   from os import path
   package_dir = path.dirname(path.abspath(__file__))
   template_path = path.join(package_dir, 'themes')

   def get_path():
       return template_path


MANIFEST.in::

   recursive-include themes *


パッケージを作成します::

   $ python setup.py sdist

distディレクトリにmytheme-1.0.0.tar.gz (windowsの場合は.zip)が作成されます。
このファイルを他の環境にコピーして ``pip install mytheme-1.0.0.tar.gz`` でインストールしたり、
任意のサイトから取得出来るようにしておいて ``pip install http://some.example.com/path/to/mytheme-1.0.0.tar.gz`` 等でインストールできます。

PyPIにテーマパッケージを登録しておけば、利用したい人は簡単にテーマを使えるようになります。
PyPIに登録する場合は以下のように実行します::

   $ python setup.py register sdist upload

