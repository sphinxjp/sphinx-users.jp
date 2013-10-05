.. _sphinx_quickstart:

sphinx-quickstartの詳細説明
===========================

Enterで飛ばした質問では主に何を回答しているのかというと、フォルダの配置をどうするか、プラグインを追加するか、などです。ここで入力した内容は、 ``conf.py`` というファイルに書き込まれますので、必要に応じていつでも変更がかけられます。少し長いですが、聞かれる内容について軽く紹介します。もちろん、上記3つ以外はデフォルトで問題ありませんので、先が知りたい方は次のセクションに進んでしまっても大丈夫です

---------------------

::

  $ sphinx-quickstart
  Welcome to the Sphinx quickstart utility.

  Please enter values for the following settings (just press Enter to
  accept a default value, if one is given in brackets).

  Enter the root path for documentation. 
  > Root path for the documentation [.]: 
  # ↑ドキュメントのルートパス省略時は今の場所

  You have two options for placing the build directory for Sphinx output.
  Either, you use a directory "_build" within the root path, or you separate
  "source" and "build" directories within the root path.
  > Separate source and build directories (y/N) [n]: 
  # ↑ソースと、ビルド結果のフォルダを完全に分けるかどうか。
  # デフォルトはソースのフォルダ内に_buildディレクトリができる。

  Inside the root directory, two more directories will be created; "_templates"
  for custom HTML templates and "_static" for custom stylesheets and other static
  files. You can enter another prefix (such as ".") to replace the underscore.
  > Name prefix for templates and static dir [_]: 
  # ↑Sphinxの作るシステムディレクトリの名前の先頭に付く接頭辞。デフォルトは'_'

  The project name will occur in several places in the built documentation.
  > Project name: Book Review
  > Author name(s): Your Name
  # ↑プロジェクト名と著者名。回答が必要です。

  Sphinx has the notion of a "version" and a "release" for the
  software. Each version can have multiple releases. For example, for
  Python the version is something like 2.5 or 3.0, while the release is
  something like 2.5.1 or 3.0a1.  If you don't need this dual structure,
  just set both to the same value.
  > Project version: 2010.03.31
  > Project release [2010.03.31]: 
  # ↑プロジェクトのバージョン。versionは荒く、releaseは細かい。
  # versionは必須だけど、releaseはデフォルトでversionと同じものが入る

  The file name suffix for source files. Commonly, this is either ".txt"
  or ".rst".  Only files with this suffix are considered documents.
  > Source file suffix [.rst]: 
  # ↑ソースファイルのデフォルトの拡張子。デフォルトは.rst。.txtも良く使われる。

  One document is special in that it is considered the top node of the
  "contents tree", that is, it is the root of the hierarchical structure
  of the documents. Normally, this is "index", but if your "index"
  document is a custom template, you can also set this to another filename.
  > Name of your master document (without suffix) [index]: 
  # ↑ドキュメントのトップページ(マスター)のファイル名(拡張子なし)。デフォルトは'index'

  Please indicate if you want to use one of the following Sphinx extensions:
  > autodoc: automatically insert docstrings from modules (y/N) [n]: 
  > doctest: automatically test code snippets in doctest blocks (y/N) [n]: 
  > intersphinx: link between Sphinx documentation of different projects (y/N) [n]: 
  > todo: write "todo" entries that can be shown or hidden on build (y/N) [n]: 
  > coverage: checks for documentation coverage (y/N) [n]: 
  > pngmath: include math, rendered as PNG images (y/N) [n]: 
  > jsmath: include math, rendered in the browser by JSMath (y/N) [n]: 
  > ifconfig: conditional inclusion of content based on config values (y/N) [n]: 
  # ↑各種拡張機能をインストールするかどうか。必要なら後で追加できます。

  A Makefile and a Windows command file can be generated for you so that you
  only have to run e.g. `make html' instead of invoking sphinx-build
  directly.
  > Create Makefile? (Y/n) [y]: 
  > Create Windows command file? (Y/n) [y]: 
  # ↑ビルド用のMakefileとバッチファイルを作るかどうか。デフォルトはY。作りましょう。

  Finished: An initial directory structure has been created.

  You should now populate your master file ./index.rst and create other documentation
  source files. Use the Makefile to build the docs, like so:
     make builder
  where "builder" is one of the supported builders, e.g. html, latex or linkcheck.
