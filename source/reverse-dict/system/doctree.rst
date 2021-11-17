.. index:: doctree, 中間ファイル;中間ファイルの内容を見る

中間ファイル `*.doctree` の内容をみてSphinxがどのようにreSTをparseしているか知りたい
--------------------------------------------------------------------------------------

SphinxはreSTフォーマットで書かれたドキュメントを中間形式に変換してから、出力形式に書き出します。
例えば `make html` を行うと以下の順番に処理が行われます。

1. `make html` を実行する
2. conf.py等の環境情報を `_build/doctree/environment.pickle` に出力する
3. 各 `*.rst` の内容を `_build/doctree/*.doctree` に出力する
4. `environment.pickle` と `*.doctree` を元に `_build/doctree/*.html` を生成する

ここで出力されたdoctreeファイルに、ドキュメントの中間形式 = **Sphinxのドキュメントツリー情報**
が格納されています。これを見ると、reStrucutredTextを書いた結果がどのように認識されているかが
分かります。

以下のプログラム [1]_ を dump_doctree.py に保存して実行してください:

.. code-block:: python

   import sys
   import pickle
   from docutils.writers import get_writer_class
   from docutils.io import StringOutput

   doctree = pickle.load(open(sys.argv[1], 'rb'))
   writer = get_writer_class('pseudoxml')()
   output = StringOutput(encoding='utf-8')
   print writer.write(doctree, output)

.. code-block:: bash

   $ python dump_doctree.py index.doctree


sphinx-users.jpサイトのトップページの index.doctree に対して実行すると、以下のように表示されました。

.. code-block:: xml

   <document source="/home/sphinxjp/sphinxjp-web/index.rst">
       <comment xml:space="preserve">
           トップページ
       <section ids="sphinx-users-jp" names="sphinx-users.jp">
           <title>
               Sphinx-Users.jp
           <bullet_list bullet="*">
               <list_item>
                   <paragraph>
                       2012年5月27日(日) 13:00から 
                       <reference name="Sphinx+翻訳 Hack-a-thon 2012.05" refuri="http://connpass.com/event/462/">
                           Sphinx+翻訳 Hack-a-thon 2012.05
                       <target ids="sphinx-hack-a-thon-2012-05" names="sphinx+翻訳\ hack-a-thon\ 2012.05" refuri="http://connpass.com/event/462/">
                        にてSphinxの勉強会を開催します。


.. [1] 情報元: https://gist.github.com/2468578
