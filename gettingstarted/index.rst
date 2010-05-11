==================
Sphinxをはじめよう
==================

Sphinxを使って、かんたんな書籍紹介のドキュメントを作っていきます。

Sphinxのインストール
====================

SphinxはPythonで書かれているため、Sphinxのインストールにあたっては、Pythonのセットアップと、Sphinxのインストールの両方が必要になります。環境によっては、両方一緒にインストールできるものもあります。

.. toctree::
   :maxdepth: 2

   install_windows
   install_unix

プロジェクトの作成
==================

Sphinxでドキュメントを作るには、まずはドキュメントのプロジェクトを作ります。 `Ruby on Rails <http://rubyonrails.org/>`_ のScaffoldや、 `Django <http://djangoproject.jp/>`_ のプロジェクトと似ていて、コマンドラインから、いくつかの質問に答えるとできあがります。

このひな形の作成と、ドキュメントのツリー構造の説明を行っていきます。

.. toctree::
   :maxdepth: 2

   make_project

表、リストなどを追加して完成させる
==================================

Sphinxでは、reStructredTextという、Wikiに似た簡易テキストマークアップを利用してドキュメントを作っていきます。ここでは、良く使うマークアップの紹介を行っていきます。

.. toctree::
   :maxdepth: 2

   use_markup

ディレクティブの紹介
====================

reStructuredTextに実装されているディレクティブについて紹介します。

.. toctree::
   :maxdepth: 2

   directives
  

