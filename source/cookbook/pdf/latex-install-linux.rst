========================================
LinuxへのTeX Liveインストール
========================================

幾つかのディストリビューションでは、システムのパッケージマネージャから
TeX Live のインストールを行うことができます。TeX Liveは巨大なパッケージ群なので、
用途に合わせて幾つかに分割したパッケージがあります。ここでは、日本語用のLaTeXである
pLaTeX 系を使うためのパッケージを紹介しています。

Debian/GNU Linux 7.0 (wheezy)
==============================

Debian/GNU Linux 10.0 (buster) では TeX Live 2018 がパッケージングされているため、
apt-get コマンド経由で TeX Live をインストールすることができます。

.. code-block:: bash

   $ apt-get install texlive-latex-recommended \
      texlive-latex-extra \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      texlive-lang-japanese \ 
      texlive-lang-cjk 

Ubuntu 18.04 (bionic)
======================

Ubuntu 18.04 (bionic) では TeX Live 2018 がパッケージングされているため、
apt-get コマンド経由で TeX Live をインストールすることができます。

.. code-block:: bash

   $ apt-get install texlive-latex-recommended \
      texlive-latex-extra \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      texlive-lang-japanese \ 
      texlive-lang-cjk 


.. note:: TeXのパッケージ関連で「○○がない」というエラーが出たら
          
          多くの場合、フルパッケージの TeX Live を入れると必要なものが入ります。
          ただし、4GiB以上の容量を必要とします。
          インストール先のストレージ容量に余裕があれば、フル版を入れることを検討してください。
          Debian/Ubuntu系であれば以下のようになります。

            $ apt-get install texlive-full

         とはいえ、細かいTeXのパッケージのチューニングが必要となる場合、
         システムのパッケージマネージャを用いず、isoやネットワークインストールを用いるべきです。
         TeX Liveのドキュメント（https://www.tug.org/texlive/doc/texlive-ja/texlive-ja.pdf）を参照してください。
