===============================================
OSXへのTeXliveインストール (MacTex / MacPorts)
===============================================

OSX 向けには `MacTeX <http://www.tug.org/mactex/>`_ というディストリビューションが提供されています。

また、2014年1月時点で、macportsで最新のTeXLive2013のインストールが可能です。

OSXユーザの方は、TeXLiveかMacTeXのいずれかをインストールしてください。
(両方インストールするとコマンドがコンフリクトする可能性があります。)

MacPortsによるTeXLiveのインストール
=====================================

MacPortsでインストールする場合、必ず ``+full`` オプションを付けてください。

.. note::

  +full を付けない場合、Sphinxから正常にPDF出力ができません。

.. code-block:: bash

   $ sudo port selfup
   $ sudo port install texlive +full


.. note::

  ビルドに1時間近くかかります。

