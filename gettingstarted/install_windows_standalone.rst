====================================================
Windowsへのインストール(スタンドアロンインストール)
====================================================

.. warning:: 

    スタンドアロンインストーラは現在アルファバージョンです。
    まだ実地検証が足りないため、みなさんのレポートお待ちしております！
    レポート先はこちら :ref:`mailinglist`

.. note::

    * 20110620:
        * 20110618版でblockdiagで日本語が使用できない問題を修正
        * オフラインでインストールに時間がかかる問題を修正


スタンドアロンインストーラの入手と実行
========================================

`Sphinx-1.0.7.alpha20110620-py2.7-win32.exe <http://dl.dropbox.com/u/284189/Sphinx-1.0.7.alpha20110620-py2.7-win32.exe>`_
をダウンロードし実行してください。

これでパス設定が行われ、以下のパッケージがインストールされます::

    Python: 2.7

    Sphinx: 1.0.7

    sphinxjp.themecore: 0.1.0
    sphinxjp.themes.bizstyle: 0.1.0
    sphinxjp.themes.biz_blue_simple: 0.1.1
    sphinxjp.themes.htmlslide: 0.1.1
    sphinxjp.themes.s6: 0.1.2
    sphinxjp.themes.sphinxjp: 0.1.0

    sphinxcontrib-actdiag: 0.1.1
    sphinxcontrib-blockdiag: 0.8.3
    sphinxcontrib-nwdiag: 0.1.1
    sphinxcontrib-seqdiag: 0.1.1

    blockdiag: 0.8.1
    blockdiagcontrib_class: 0.1.0
    blockdiagcontrib_qb: 0.1.0
    blockdiagcontrib_square: 0.1.0

    seqdiag: 0.3.5
    actdiag: 0.1.5
    nwdiag: 0.2.4


    PIL: 1.1.7
    Pygments: 1.4
    distribute: 0.6.19
    docutils: 0.7
    funcparserlib: 0.3.5
    jinja2: 2.5.5
    pypng: 0.0.12
    zc.buildout: 1.5.2
    zc.recipe.egg: 1.3.2


スタートメニューから、 **コマンドプロンプト** を起動するか、「名前を指定して実行」で ``cmd`` と入力してみましょう。ウィンドウが表れたら、 ``python[Enter]`` とタイプします。インストールしたPythonのバージョンを表す文章に続いて、 ``>>>`` という文字が表示されればインストールは成功です。 ``Ctrl+Z`` キーを押して終了しましょう。


これで完了です。インストールが終わったら、コマンドラインから、 ``sphinx-quickstart[エンター]`` とタイプしてみます。以下のように表示されていればインストールは成功です。Ctrl+Cキーを押して中断しましょう。インストール作業は以上です。次は :doc:`make_project` に進んでください。

