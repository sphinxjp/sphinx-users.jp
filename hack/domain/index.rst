==================
ドメイン開発ガイド
==================

Sphinxの強みは、プログラム用のドキュメントの作成のための機能が充実している点にあります。最初からPython/C/C++/JavaScriptのAPIを記述するディレクティブが備わっています。同じ関数名でも、対象となる言語を識別してきちんとリンクを貼ることもできますし、ドキュメント内で参照したい言語が一種類しかない場合は、設定ファイルでデフォルトを設定してシンプルにドキュメントを書くこともできます。そのための中核の仕組みが `ドメイン <http://sphinx-users.jp/doc12/domains.html>`_ です。

Sphinxでは(がんばれば)対象となる言語を増やすこともできます。Erlang/Ruby/PHPなどのための拡張機能がすでに作成されています。

ここでは、 `Rubyドメイン <https://bitbucket.org/birkenfeld/sphinx-contrib/src/5f95add2ec31/rubydomain/sphinxcontrib/rubydomain.py?at=default>`_ のソースコードをモデルに紹介します。

.. toctree::

   basic
   create

