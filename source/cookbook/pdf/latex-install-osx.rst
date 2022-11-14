=======================================================
OSX / macOSへのTeX Liveインストール (MacTex / MacPorts)
=======================================================

OSX 向けには `MacTeX <http://www.tug.org/mactex/>`_ というディストリビューションが提供されています。

また、2019年11月時点で、macports、Homebrewで最新のTeX Live2019のインストールが可能です。

OSX / macOS ユーザの方は、TeX LiveかMacTeXのいずれかをインストールしてください。
(両方インストールするとコマンドがコンフリクトする可能性があります。)

.. warning:: TeX LiveよりMacTeXを

             OSX / macOS に標準でインストールされているヒラギノフォントは OSX / macOS 
             のバージョンによって設定が異なり、パッチを当ててTeX側が対処しているため、
             TeX Liveの挙動を把握していない場合は
             OSX / macOS 用に調整された MacTeX の使用を推奨します。


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


HomebrewによるMacTeXのインストール
==================================

.. code-block:: bash

    $ brew install --cask mactex-no-gui
    $ sudo tlmgr update --self --all

..note:: BasicTeX
         
         OSX / macOS 用のTeX Liveディストリビューションには他にBasicTeXがあります。
         パッケージのサイズはMacTeXよりも小さくなりますが、日本語環境を別にインストールする必要があります。
         Homebrewの場合は以下のようになります。

           $ brew cask install basictex
           $ sudo tlmgr update --self --all
