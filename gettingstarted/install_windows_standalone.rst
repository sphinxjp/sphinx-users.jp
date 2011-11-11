====================================================
Windowsへのインストール(スタンドアロンインストール)
====================================================

.. warning:: 

   スタンドアロンインストーラは現在アルファバージョンです。
   まだ実地検証が足りないため、みなさんのレポートお待ちしております！
   レポート先はこちら :ref:`mailinglist`

.. note::

   * 20110618_

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

   `other releases`_


.. _20110618: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.7.alpha20110618-py2.7-win32.exe
.. _20110620: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.7.alpha20110620-py2.7-win32.exe
.. _20110830: https://bitbucket.org/sphinxjp/website/downloads/Sphinx-1.0.7alpha_20110830-py2.7-win32.zip
.. _`other releases`: https://bitbucket.org/sphinxjp/website/downloads


スタンドアロンインストーラの入手と実行
========================================

`こちら <https://bitbucket.org/sphinxjp/website/downloads/>`_ から最新版をダウンロードし、実行してください。

.. tip::

   Windows Vista以降で管理者権限が必要な場所へのインストールを行う場合は
   「右クリックして管理者権限で実行」してください。
   (管理権限は要求しないように作っています)

これでパス設定が行われ、以下のパッケージがインストールされます::

   Python: 2.7

   Sphinx: 1.0.7 + patches

   sphinxjp.themecore = 0.1.3
   sphinxjp.themes.biz-blue-simple = 0.1.2
   sphinxjp.themes.bizstyle = 0.1.2
   sphinxjp.themes.htmlslide = 0.1.2
   sphinxjp.themes.s6 = 0.1.3
   sphinxjp.themes.sphinxjp = 0.1.1

   sphinxcontrib-actdiag = 0.2.0
   sphinxcontrib-blockdiag = 0.9.0
   sphinxcontrib-nwdiag = 0.2.0
   sphinxcontrib-seqdiag = 0.2.0

   blockdiag = 0.8.9
   blockdiagcontrib-class = 0.1.0
   blockdiagcontrib-qb = 0.1.1
   blockdiagcontrib-square = 0.1.0
   seqdiag = 0.3.8
   actdiag = 0.1.7
   nwdiag = 0.4.0

   distribute = 0.6.20
   docutils = 0.8
   funcparserlib = 0.3.5
   jinja2 = 2.6
   pillow = 1.7.4
   pygments = 1.4
   pypng = 0.0.12
   webcolors = 1.3.1
   zc.buildout = 1.5.2
   zc.recipe.egg = 1.3.2


スタートメニューから、 **コマンドプロンプト** を起動するか、「名前を指定して実行」で ``cmd`` と入力してみましょう。ウィンドウが表れたら、 ``python[Enter]`` とタイプします。インストールしたPythonのバージョンを表す文章に続いて、 ``>>>`` という文字が表示されればインストールは成功です。 ``Ctrl+Z`` キーを押して終了しましょう。

これで完了です。インストールが終わったら、コマンドラインから、 ``sphinx-quickstart[エンター]`` とタイプしてみます。以下のように表示されていればインストールは成功です。Ctrl+Cキーを押して中断しましょう。インストール作業は以上です。次は :doc:`make_project` に進んでください。

.. warning::

   もしも環境変数 ``PYTHONPATH`` を設定している場合、正しく動作しない可能性
   があります。コマンドプロンプトで :command:`set PYTHONPATH`
   と入力すると現在設定されているPYTHONPATHの値を確認することが出来ます。
   この値を完全に消してしまうか(この設定を必要とする他のプログラムが動作しなく
   鳴る可能性があるため、自己責任にてお願いします)、Sphinx関連のコマンドを実行
   する前に必ず :command:`set PYTHONPATH=` と入力して、一時的に設定を解除して
   ください。

   PYTHONPATHは、そのPCの利用者が自分で設定する場合以外に、古いThinkpadや
   TracLightningなど一部のプログラムをインストールすると自動的に設定される
   ことがあります。

