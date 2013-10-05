========================
このサイトのビルド手順
========================

1. Pythonをインストール

   i. http://python.org/download/ からPython2.7を入手してインストール

2. easy_install コマンドをインストール

   i. https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py を入手
   ii. ``python ez_setup.py`` を実行

3. Sphinx-1.2以降とsphinxjpテーマをインストール

   i. ``easy_install Sphinx Pillow sphinxjp.themes.sphinxjp`` を実行

4. HTMLを生成する

   i. ``make html`` を実行

