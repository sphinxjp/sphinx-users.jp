.. index::
   single: 独自ディレクティブ; 定義を書くために独自ディレクティブを追加する

定義を書くために独自ディレクティブを追加したい
==============================================

拡張APIの `add_object_type <http://www.sphinx-doc.org/ja/stable/extdev/appapi.html#sphinx.application.Sphinx.add_object_type>`_ 関数を使って、簡単に独自のディレクティブを定義することができます。専門用語が頻繁に出てくるような技術文書で力を発揮します。

次のような用途で使うことができます。

- 設定ファイルのパラメータの定義
- 特定用途の用語定義

Sphinx本体のドキュメントでは、設定ファイルの説明用に、confvalディレクティブとeventディレクティブ、および、confvalロールとeventロールを追加しています。

用語集の定義リストの作り方ごとの違い
-------------------------------------

用語集を作るには、独自ディレクティブを追加する以外にも、glossaryディレクティブでも作ることができます。また、もっと難易度の高い方法としては、独自ドメインの追加があります。これらの方法には次のような違いがあります。

.. list-table::
   :header-rows: 1
   :widths: 10 10 10 10

   - *
     * glossary
     * 独自ディレクティブ
     * 独自ドメイン
   - * クロスリファレンス
     * ◯ (termロール)
     * ◯
     * ◯ (実装次第)
   - * ディレクティブの親子関係
     * ×
     * ×
     * ◯ (実装次第)
   - * 索引への追加
     * ×
     * ◯ (indextemplateパラメータ指定時)
     * ◯ (実装次第)
   - * オプション追加
     * ×
     * ◯ (3番目のパラメータ指定時)
     * ◯ (実装次第)
   - * まとめページ作成
     * ×
     * ×
     * ◯ (実装次第)

独自ディレクティブは1行(オプションを追加しない場合)で実現できる割に、組み込みのglossaryディレクティブよりは高機能ですが、がんばって実装した(数百行)の独自ドメインよりは機能が劣ります。

独自ディレクティブの定義方法
----------------------------

独自のディレクティブは、 :file:`conf.py` の中の ``setup()`` 関数の中で ``add_object_type`` を使って定義します。

.. code-block:: python

   def setup(app):
       app.add_object_type('confval', 'confval',
                           objname='configuration value',
                           indextemplate='pair: %s; 設定値')

最初のパラメータはディレクティブ名です。次のようにディレクティブが定義できるようになります。

.. code-block:: rst

   .. confval:: project

      ドキュメントを書いているプロジェクト名です。

2番目のパラメータはロール名です。このサンプルではディレクティブ名と一緒ですが、次のように定義へのリンクを貼ることができます。

.. code-block:: rst

   :confval:`project` には、プロジェクト名を設定します。

indextemplateパラメータを設定すると、索引に項目を追加できます。 ``'%s'`` にはディレクティブ名が置換され、このパラメータをindexディレクティブに追加したのと同じように処理されます。この場合は ``pair`` なので次のように2項目が表示されます。

.. code-block:: none

   設定値
       project

   project
       設定値

objnameパラメータ(省略時はディレクティブ名と同値)は、検索結果など、オブジェクトの一覧表示時に、種類を表示するのに使用されます。

オプション付きの独自ディレクティブの定義方法
--------------------------------------------

定義リストには追加のオプションを付けたいが、ロールでクロスリファレンスを指定したい時や、索引には省略形で表示したい場合があります。その場合には、3番目のパラメータとして、省略形への変換関数を渡します。Sphinx本体のドキュメントでは、次のようにイベントの説明を行っています。

.. code-block:: rst

   .. event:: build-finished(app, exception)

      ビルドが完了し、Sphinxが終了する際に発行されます。

変換関数を定義しない場合には、この項目へのリンクを貼る場合には ``:event:`build-finished(app, exception)``` としなければなりません。 ``:event:`build-finished``` というオプションなしの名前でリンクを貼ったり、索引に追加するには、名前を編集するための関数を3つ目のパラメータとして追加します。

下記の変換関数ではまず正規表現で名前を分割します。また表示の時にパラメータ部のスタイルを変更するために、内部でノードを作成して追加しています。カスタマイズするには、正規表現やif文などを使って名前の分割部分だけカスタマイズすれば使えるでしょう。

.. code-block:: python

   from sphinx import addnodes

   event_sig_re = re.compile(r'([a-zA-Z-]+)\s*\((.*)\)')

   def parse_event(env, sig, signode):
       m = event_sig_re.match(sig)
       if not m:
           signode += addnodes.desc_name(sig, sig)
           return sig
       name, args = m.groups()
       signode += addnodes.desc_name(name, name)
       plist = addnodes.desc_parameterlist()
       for arg in args.split(','):
           arg = arg.strip()
           plist += addnodes.desc_parameter(arg, arg)
       signode += plist
       return name

   def setup(app):
       from sphinx.util.docfields import GroupedField
       fdesc = GroupedField('parameter', label='Parameters',
                            names=['param'], can_collapse=True)
       app.add_object_type('event', 'event', 'pair: %s; event', parse_event,
                           doc_field_types=[fdesc])

