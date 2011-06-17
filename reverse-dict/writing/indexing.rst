.. index:: index

索引に載せたい
--------------------------

``index`` を使います。

:: 

  .. index::
     single: execution; context
     pair  : loop; statement
     triple: module; search; path
  
  indexされるセクションのはじまり
  -------------------------------

single
    単体の項目を作成します。 ``sub;entry`` のように、セミコロン(";")で区切るこ
    とにより、子の項目を作ることもできます。

pair
    ``pair: loop; statement`` は ``loop; statement`` と ``statement;
    loop`` という2つの項目が作成されます。

see
    ``see: entry; other`` という項目があると、 ``entry`` から ``other`` を参照す
    る項目が作成されます。

.. versionchanged:: 1.1
   ``see`` は1.1から追加されました。

.. note::
   残念ながら日本語の項目はきちんと扱えません。 `Sphinxで日本語を使い
   やすくするための拡張各種 <http://h12u.com/sphinx/>`_ に解決方法がありま
   すので参照してください。
