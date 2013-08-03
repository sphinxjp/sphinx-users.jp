====================================================
Windowsへのインストール(スタンドアロンインストール)
====================================================

スタンドアロンインストーラはみなさんの利用レポートをお待ちしております。
レポート先はこちら :ref:`mailinglist`
(We are looking forward to your usage reports for Standalone-installer. Earlier report is here: :ref:`mailinglist`)

.. contents::



Install standalone Sphinx
=============================

最新の `Sphinx standalone installer`_ をダウンロードし実行してください。

.. note::

   Windows Vista以降で管理者権限が必要な場所へのインストールを行う場合は「右クリックして管理者権限で実行」してください。(管理権限は要求しないように作っています)

   If you need privilege to install on WIndows Vista or after, You need to
   install with administrator privilege (right click and choose one).



これでパス設定を含めたインストールが行われます。


スタートメニューから、 **コマンドプロンプト** を起動するか、「名前を指定して実行」で ``cmd`` と入力してみましょう。ウィンドウが表れたら、 ``python[Enter]`` とタイプします。インストールしたPythonのバージョンを表す文章に続いて、 ``>>>`` という文字が表示されればインストールは成功です。 ``Ctrl+Z`` キーを押して終了しましょう。

これで完了です。インストールが終わったら、コマンドラインから、 ``sphinx-quickstart[エンター]`` とタイプしてみます。以下のように表示されていればインストールは成功です。Ctrl+Cキーを押して中断しましょう。インストール作業は以上です。次は :doc:`make_project` に進んでください。

::

  Welcome to the Sphinx 1.2b1 quickstart utility.

  Please enter values for the following settings (just press Enter to
  accept a default value, if one is given in brackets).

  Enter the root path for documentation.
  > Root path for the documentation [.]:


.. warning::

   もしも環境変数 ``PYTHONPATH`` を設定している場合、正しく動作しない可能性があります。コマンドプロンプトで :command:`set PYTHONPATH` と入力すると現在設定されているPYTHONPATHの値を確認することが出来ます。この値を完全に消してしまうか(この設定を必要とする他のプログラムが動作しなくなる可能性があるため、自己責任にてお願いします)、Sphinx関連のコマンドを実行する前に必ず :command:`set PYTHONPATH=` と入力して、一時的に設定を解除してください。

   PYTHONPATHは、そのPCの利用者が自分で設定する場合以外に、古いThinkpadやTracLightningなど一部のプログラムをインストールすると自動的に設定されることがあります。


Sphinx standalone installer
==============================

* `SphinxInstaller-1.2b1.20130803-py2.7-win32.zip`_

.. _SphinxInstaller-1.2b1.20130803-py2.7-win32.zip: https://bitbucket.org/sphinxjp/website/downloads/SphinxInstaller-1.2b1.20130803-py2.7-win32.zip

Includes::

   Python: 2.7.5

   Sphinx: 1.2b1

   sphinxjp.themecore = 0.1.3
   sphinxjp.themes.bizstyle = 0.1.5
   sphinxjp.themes.dotted = 0.1.1
   sphinxjp.themes.htmlslide = 0.1.4
   sphinxjp.themes.impressjs = 0.1.2
   sphinxjp.themes.s6 = 0.2.0
   sphinxjp.themes.solarized = 0.1.0
   sphinxjp.themes.sphinxjp = 0.1.1
   sphinxjp.themes.trstyle = 0.1.1

   sphinxcontrib-actdiag = 0.5.1
   sphinxcontrib-blockdiag = 1.2.0
   sphinxcontrib-nwdiag = 0.6.1
   sphinxcontrib-seqdiag = 0.5.1

   blockdiag = 1.2.4
   blockdiagcontrib-class = 0.1.3
   blockdiagcontrib-qb = 0.1.3
   blockdiagcontrib-square = 0.1.3
   actdiag = 0.4.3
   nwdiag = 0.9.4
   seqdiag = 0.8.2

   docutils = 0.11
   funcparserlib = 0.3.6
   jinja2 = 2.7
   markupsafe = 0.18
   pillow = 2.1.0
   pygments = 1.6
   pypng = 0.0.15
   webcolors = 1.4

   setuptools = 0.9.8
   buildout.locallib = 0.3.0
   gp.vcsdevelop = 2.2.3
   zc.recipe.egg = 2.0.0
   zc.buildout = 2.2.0


Release Note
--------------

* 20130803 (Sphinx-1.2b1 + Python-2.7)

  * docutils-0.11, Python-2.7.5, setuptools-0.9.8 に更新

* 20130715 (Sphinx-1.2b1 + Python-2.7)

  * Sphinx-1.2b1 (日本語Patchは本体に取り込み済み)

* 20121026 (Sphinx-1.1.3 + 日本語patch + Python-2.7)

  * Based upon Sphinx-1.1.3 release
  * include `PR#81`_ (LaTeX日本語patchの新版)
  * include `PR#61`_ (日本語ファイル名patch)
  * include newer blockdiag at 2012/10/26

* 20111025 (Sphinx-1.0.8 + 日本語patch + Python-2.7)

  * ベースをSphinx-1.0.8に変更
  * latexpdfja 時にgmakeコマンドからmakeコマンドを呼び出してしまう問題を修正
  * 同梱のblockdiag系を10/24時点の最新版に更新

* 20110830 (Sphinx-1.0.7 + 日本語patch + Python-2.7)

  * Sphinx-1.0.7をベースに、以下のパッチが当ててあります

    * make にlatexpdfjaターゲットを追加、ただしgmakeやtexliveが必要
      (以前 Sphinx-users MLで話題になっていたpatchを追加しています)
    * 日本語ディレクトリ・ファイル名を扱えます

  * 同梱のblockdiag系が8/30時点の最新版です
  * PILではなくPillow(互換ライブラリ)の独自ビルド版を使っています
  * PYTHONPATHが設定された一部の環境でインストール出来ない問題に対応

* 20110620 (Sphinx-1.0.7 + Python-2.7)

  * 20110618版でblockdiagで日本語が使用できない問題を修正
  * オフラインでインストールに時間がかかる問題を修正

* 20110618

  * 最初のリリース

`other releases`_


.. _`other releases`: https://bitbucket.org/sphinxjp/website/downloads
.. _`PR#61`: https://bitbucket.org/birkenfeld/sphinx/pull-request/61
.. _`PR#81`: https://bitbucket.org/birkenfeld/sphinx/pull-request/81

