===============================================
OSXへのTeX Liveインストール (MacTex / MacPorts)
===============================================

OSX 向けには `MacTeX <http://www.tug.org/mactex/>`_ というディストリビューションが提供されています。

また、2014年1月時点で、macportsで最新のTeX Live2013のインストールが可能です。

OSXユーザの方は、TeX LiveかMacTeXのいずれかをインストールしてください。
(両方インストールするとコマンドがコンフリクトする可能性があります。)

MacPortsによる TeX Live のインストール
=======================================

MacPortsでインストールする場合、必ず ``+full`` オプションを付けてください。

.. note::

  +full を付けない場合、Sphinxから正常にPDF出力ができません。

.. code-block:: bash

   $ sudo port selfup
   $ sudo port install texlive +full


.. note::

  ビルドに1時間近くかかります。

