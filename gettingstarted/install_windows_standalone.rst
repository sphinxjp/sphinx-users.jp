====================================================
Windowsへのインストール(スタンドアロンインストール)
====================================================

.. warning:: 

   スタンドアロンインストーラは現在アルファバージョンです。まだ実地検証が足りないため、みなさんのレポートお待ちしております！レポート先はこちら :ref:`mailinglist`

.. note::

   * 20110618

     * 最初のリリース

   * 20110620_

     * 20110618版でblockdiagで日本語が使用できない問題を修正
     * オフラインでインストールに時間がかかる問題を修正

   * 20110830_

     * Sphinx-1.0.7をベースに、以下のパッチが当ててあります

       * make にlatexpdfjaターゲットを追加、ただしgmakeやtexliveが必要
         (以前 Sphinx-users MLで話題になっていたpatchを追加しています)
       * 日本語ディレクトリ・ファイル名を扱えます

     * 同梱のblockdiag系が8/30時点の最新版です
     * PILではなくPillow(互換ライブラリ)の独自ビルド版を使っています
     * PYTHONPATHが設定された一部の環境でインストール出来ない問題に対応

   * 20111025_

     * ベースをSphinx-1.0.8に変更
     * latexpdfja 時にgmakeコマンドからmakeコマンドを呼び出してしまう問題を修正
     * 同梱のblockdiag系を10/24時点の最新版に更新

   `other releases`_


.. _20110620: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.7.alpha20110620-py2.7-win32.exe
.. _20110830: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.7alpha_20110830-py2.7-win32.zip
.. _20111025: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.8_ja_20111025-py2.7-win32.zip
.. _`other releases`: https://bitbucket.org/sphinxjp/website/downloads


スタンドアロンインストーラの入手と実行
========================================

`Sphinx-1.0.8_ja_20111025-py2.7-win32.zip <https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.8_ja_20111025-py2.7-win32.zip>`_
をダウンロードし実行してください。

.. tip::

   Windows Vista以降で管理者権限が必要な場所へのインストールを行う場合は「右クリックして管理者権限で実行」してください。(管理権限は要求しないように作っています)

これでパス設定が行われ、以下のパッケージがインストールされます::

   Python: 2.7

   Sphinx: 1.0.8 + japanese patches

   sphinxjp.themecore = 0.1.3
   sphinxjp.themes.bizstyle = 0.1.3
   sphinxjp.themes.dotted 0.1.0
   sphinxjp.themes.htmlslide = 0.1.2
   sphinxjp.themes.s6 = 0.1.3
   sphinxjp.themes.solarized 0.1.0
   sphinxjp.themes.sphinxjp = 0.1.1
   sphinxjp.themes.trstyle 0.1.0

   sphinxcontrib-actdiag = 0.2.2
   sphinxcontrib-blockdiag = 0.9.2
   sphinxcontrib-nwdiag = 0.2.2
   sphinxcontrib-seqdiag = 0.2.2

   blockdiag = 0.9.6
   blockdiagcontrib-class = 0.1.1
   blockdiagcontrib-qb = 0.1.2
   blockdiagcontrib-square = 0.1.1
   seqdiag = 0.5.1
   actdiag = 0.2.0
   nwdiag = 0.5.1

   distribute = 0.6.21
   docutils = 0.8.1
   funcparserlib = 0.3.5
   jinja2 = 2.6
   pillow = 1.7.5
   pygments = 1.4
   pypng = 0.0.12
   webcolors = 1.3.1
   zc.buildout = 1.5.2
   zc.recipe.egg = 1.3.2


スタートメニューから、 **コマンドプロンプト** を起動するか、「名前を指定して実行」で ``cmd`` と入力してみましょう。ウィンドウが表れたら、 ``python[Enter]`` とタイプします。インストールしたPythonのバージョンを表す文章に続いて、 ``>>>`` という文字が表示されればインストールは成功です。 ``Ctrl+Z`` キーを押して終了しましょう。

これで完了です。インストールが終わったら、コマンドラインから、 ``sphinx-quickstart[エンター]`` とタイプしてみます。以下のように表示されていればインストールは成功です。Ctrl+Cキーを押して中断しましょう。インストール作業は以上です。次は :doc:`make_project` に進んでください。

::

  Welcome to the Sphinx 1.0.8 quickstart utility.

  Please enter values for the following settings (just press Enter to
  accept a default value, if one is given in brackets).

  Enter the root path for documentation.
  > Root path for the documentation [.]:


.. warning::

   もしも環境変数 ``PYTHONPATH`` を設定している場合、正しく動作しない可能性があります。コマンドプロンプトで :command:`set PYTHONPATH` と入力すると現在設定されているPYTHONPATHの値を確認することが出来ます。この値を完全に消してしまうか(この設定を必要とする他のプログラムが動作しなくなる可能性があるため、自己責任にてお願いします)、Sphinx関連のコマンドを実行する前に必ず :command:`set PYTHONPATH=` と入力して、一時的に設定を解除してください。

   PYTHONPATHは、そのPCの利用者が自分で設定する場合以外に、古いThinkpadやTracLightningなど一部のプログラムをインストールすると自動的に設定されることがあります。

