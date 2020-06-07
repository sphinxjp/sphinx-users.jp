======================================
macOS と Linux(Ubuntu)へのインストール
======================================

macOS と Linux(Ubuntu)へのインストールは大きく分けると OS のパッケージ管理ツールからインストールする方法と、
Python のパッケージ管理ツールを使ってインストールする方法があります。

ここでは Ubuntu のパッケージ管理コマンド :command:`apt` を使った方法と、macOS、Linux OS 共通のインストール方法として
Python 標準のパッケージ管理コマンド :command:`pip` を使った方法を紹介します。


.. contents::
   :depth: 2


パッケージ管理ツールを利用したインストール(Ubuntu)
==================================================

UbuntuなどのDebian系のOSの場合は、以下のコマンドを使ってインストールすることができます。

.. code-block:: bash

   $ apt install python3-sphinx

.. note: Linux ディストリビューションのパッケージは収録のタイミングや配布ポリシーの都合で Sphinx のバージョンは最新ではありません。


:command:`pip` を使ってインストールする(macOS, UNIX & Linuxディストリビューション共通)
======================================================================================

macOS や Linux ディストリビューション、その他 UNIX OS の場合、
システムで標準でインストールされているPython、もしくは自前でビルドしたPythonで Sphinx のインストールが可能です。

`venv <https://docs.python.org/ja/3/library/venv.html>`_ という Python3.3 以降に追加された仮想環境機能を利用して Sphinx 用の環境を作成し、Sphinx をインストールする手順を紹介します。

ターミナルソフトを起動し、コマンドを打ちこむ手順は以下の通りです。

1. venv 環境をユーザのホームディレクトリ配下に ``.venv/mysphinx`` という名前で作成します。

  .. code-block:: bash

      $ make -p ~/.venv
      $ python3 -m venv ~/.venv/mysphinx

2. 仮想環境に入ります

  .. code-block:: bash

      $ source ~/.venv/mysphinx/bin/activate

3. `pip <https://pip.pypa.io/en/stable/>`_ コマンドでインストールします。

  .. code-block:: bash

     $ pip install sphinx Pillow

     # 正常にインストールが完了した場合の表示例
     Successfully installed Jinja2-2.10 MarkupSafe-1.0 Pillow-4.3.0 Pygments-2.2.0 alabaster-0.7.10 babel-2.5.1 certifi-2017.11.5 chardet-3.0.4 colorama-0.3.9 docutils-0.14 idna-2.6 imagesize-0.7.1 olefile-0.44 pytz-2017.3 requests-2.18.4 six-1.11.0 snowballstemmer-1.2.1 sphinx-1.6.5 sphinxcontrib-websupport-1.0.1 urllib3-1.22

4. Sphinx がインストールされた事を確認しましょう。

  .. code-block:: bash

     $ sphinx-quickstart --version

     # 正常にインストールが完了した場合の表示例
     sphinx-quickstart 3.0.4


venv 環境から抜ける場合は :command:`deactivate` と打ち込んでください。ターミナルをそのまま閉じても問題はありません。

.. note:: Sphinx のバージョンをアップデートする

          Sphinx の新しいバージョンがリリースされた場合、 venv 環境で下記コマンドを実行し更新をしてください ::

             pip install sphinx -U

インストール作業は以上です。次は :doc:`make_project` に進んでください。
