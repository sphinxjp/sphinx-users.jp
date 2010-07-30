=================================
Mac OS X, Linuxへのインストール
=================================

Mac OS X、Linuxへのインストールにはいくつか種類があります。

パッケージシステムを利用したインストール
========================================

MacPorts
--------

Mac OS Xの `MacPorts <http://www.macports.org/>`_ を利用しているのであれば、下記のコマンド一発で、必要なものがすべてインストールされます。

.. code-block:: bash

   $ sudo port install py26-sphinx

このままだと実行時のパスに追加されないため、python_selectもインストールして、python2.6が標準で使われるようにしてみましょう。

.. code-block:: bash

   $ sudo port install python_select
   $ sudo python_select python26

``which sphinx-quickstart`` が応答を返してくればインストール完了です。

Ubuntuのaptコマンド
-------------------

Ubuntu LinuxなどのDebian系のOSの場合は、以下のコマンドを使ってインストールすることができます。

.. code-block:: bash

   $ aptitude install python-sphinx

自分でインストールする
======================

システムで標準でインストールされているPython、もしくは自前でビルドしたPythonがあるのであれば、それを使うことができます。実際に行うのは、以下のインストールと一緒です。

* :ref:`install_easy_install`
* :ref:`install_sphinx`

インストールしたら
==================

次は :doc:`make_project` に進んで、プロジェクトの作成に進んでください。
