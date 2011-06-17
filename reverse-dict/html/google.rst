
Google AnalyticsやGoogle Adsenceを貼りたい
---------------------------------------------------

``_templates`` に ``layout.html`` というファイルを作成します。

テーマにもよりますが、Google Adsenceを貼る場合サイドバーの検索部分の下
が良いでしょう。その場合、 ``layout.html`` を以下の用に作成します。

::

  {% extends "!layout.html" %}
  
  {% block sidebarsearch %}
  {{ super() }}
  <script type="text/javascript"><!--
     ここにGoogle AdsenceのJavaScriptを貼る
  </script>
  {% endblock %}

詳しい説明はここでは行いませんが、以下に簡単な各書式の意味を記します。

``{% extends "!layout.html" %}``
    既存のlayout.htmlを上書きする設定
``{%block sidebarsearch %}``
    サイドバーの検索を上書きするという宣言
``{{ super()}}`` 
    ベースのlayout部分を埋め込む
``{% endblock %}``
    block(ここではsidebarsearch)の終わり

Google Analyticsの場合、どこでも構いませんが、一番下の ``footer`` が良
く使われる場所でしょう。

::

  {% block footer %}
  {{ super() }}
  <script type="text/javascript">

    ここにGoogle Analyticsを貼る  
  </script>
  {% endblock %}
  

