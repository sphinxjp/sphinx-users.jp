=======================================
Sphinx-1.1.3への日本語PDFパッチを適用
=======================================

パッチ適用は1.1.3を利用する場合のみ必要な手順です。

Sphinx-1.1.3に打田さんが開発された `日本語 PDF まわりの修正 <http://www.python.jp/pipermail/sphinx-users/2011-November/000173.html>`_ を適用します。

インストールされているSphinx-1.1.3に打田さんの修正内容を
`パッチ化したもの <https://bitbucket.org/sphinxjp/website/downloads/uchida-sphinxjp-japanese-latex.patch>`_ を適用します。

.. note::

  このノートで提供されているパッチはSphinx 1.2よりも古いものです。

.. code-block:: bash

   $ cd /tmp
   $ wget https://bitbucket.org/sphinxjp/website/downloads/uchida-sphinxjp-japanese-latex.patch
   $ cd /usr/lib/pymodules/python2.6/sphinx
   $ sudo patch -p1 < /tmp/uchida-sphinxjp-japanese-latex.patch
   patching file sphinx/quickstart.py
   patching file sphinx/texinputs/Makefile
   patching file sphinx/texinputs/fncychap.sty
   patching file sphinx/texinputs/sphinx.sty
   Hunk #3 succeeded at 430 with fuzz 1 (offset -3 lines).
   Hunk #4 succeeded at 502 (offset -3 lines).
   patching file sphinx/writers/latex.py

