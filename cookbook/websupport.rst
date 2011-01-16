===============================
 Sphinx 1.1 WebSupportの使い方
===============================

:日時: 2011/01/16
:作者: @r_rudiさん(http://d.hatena.ne.jp/rudi/)
:最終更新: 2011/01/16

.. warning::
   この機能は現時点でまだ未リリースです。

Sphinx version 1.1から、WebSupportというものが入りました。これは、sphinxのドキュメントをWebサーバにつなぎ、コメントや変更の提案、投票といった機能を追加してくれる機能です。

この記事は、 `Python Web フレームワーク アドベントカレンダー2010 <http://atnd.org/events/10465>`_ の一エントリとして執筆されました。

---------------------------
 概要把握: 動作している様子
---------------------------

WebSupport開発者のJacob Masonさんが提供しているデモサイトです。これを見て雰囲気を掴んでください。

http://www.jacobmason.com/demo/contents

ちなみにこのソースは `bitbucket <http://bitbucket.org/jacobmason/sphinx-demo-webapp/>`_ で公開されています。

------------------
 必要なライブラリ
------------------

WebSupportはコメントなどをsqliteのDBに保存しますので、それを扱うために

- sqlalchemy

が必要です。

また、WebSupport単体ではWebサーバの機能はないため、別途必要です。今回はsphinxと同じpocoo製ということで、 `flask <http://flask.pocoo.org/>`_ を使いました。

あ、そうそう、WebSupportはSphinx 1.1からです。現在(2011年1月)の最新バージョンは1.0.7 なので、WebSupportを使いたい場合は、mercurialを使って `開発版 <http://bitbucket.org/birkenfeld/sphinx/>`_ を取ってきてくださいね。

-------
 build
-------

HTMLやPDFなどの他のBuilderと同じく、WebSupportでもまずはbuildする必要があります。といっても、Makefileを叩くのではなく、普通にpython scriptを叩きます。

以下の内容を build.py として作ります。ここで、ROOTはMakefileなどが置いてある場所の絶対パスです。

なお、私の流儀として、sourceとbuildを別ディレクトリとして作るように指定しているので別々になっています。同じにしている人は適宜読み替えてください。

:: 

  from sphinx.websupport import WebSupport
  from sphinx.websupport.errors import DocumentNotFoundError
  
  ROOT = '/Absolute/Path/To/Your/Document/Root'
  SRCDIR = ROOT+'/source'
  BUILDDIR = ROOT+'/build/web'
  support = WebSupport(SRCDIR, BUILDDIR)
  
  support.build()
 
WebSupportの引数で

- sourceディレクトリ
- build先のDBなどが置かれるディレクトリ

が指定できます。

このスクリプトを書いて、

::

  % python build.py

として実行すると、 build/web以下が作成されます。

--------------------
 テンプレートの配置
--------------------

描画に使用するjinja2のテンプレートを配置します。

今回はテンプレートはROOT直下に _template というディレクトリ名にdoc.htmlとbase.htmlという名前で置きました。

なお、sphinxのHTML builderで使用しているbasic/layout.htmlというテンプレートをそのまんま使おうとしてかなりいろいろハマりましたので、結局自分で作りました。

~~~~~~~~~ 
doc.html
~~~~~~~~~ 

::

  {% extends "base.html" %}
  
  {%- block title %}
    {{ document.title|striptags }}
  {%- endblock %}
  
  {% block css %}
    {{ document.css|safe }}
  {% endblock %}
  
  {%- block js %}
    {{ document.script|safe }}
  {%- endblock %}
  
  {%- block relbar1 %}
    {{ document.relbar|safe }}
  {%- endblock %}
  
  {%- block body %}
    {{ document.body|safe }}
  {%- endblock %}
  
  {%- block sidebar %}
    {{ document.sidebar|safe }}
  {%- endblock %}
  
  {% block relbar2 %}
    {{ document.relbar|safe }}
  {% endblock %}
  

~~~~~~~~~ 
base.html
~~~~~~~~~ 

::

  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  	  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <title>{% block title %}{% endblock %}</title>
      {% block css %}
      {{ sg.css|safe }}
      {% endblock %}
      <link rel="stylesheet" href="/static/_static/sphinxweb.css" type="text/css" media="screen" />
      {% block js %}
      {{ sg.script|safe }}
      {% endblock %}
    </head>
    <body>
      {% block relbar1 %}
      <div class="related">
        <h3>Navigation</h3>
        <ul>
          <li><a href="{{ url_for('docs.index') }}">{{ sg.shorttitle }}</a> &raquo;</li>
        </ul>
      </div>
      {% endblock %}
  
      <div class="document">
        <div class="documentwrapper">
  	<div class="bodywrapper">
            <div class="body">
  	    {% block body %}{% endblock %}
            </div>
  	</div>
        </div>
      {% block sidebar %}{% endblock %}
        <div class="clearer"></div>
  
      {% block relbar2 %}{% endblock %}
  
  {%- block footer %}
      <div class="footer">
      {%- if sg %}
      {%- if sg.show_copyright %}
        &copy; Copyright {{ sg.copyright }}.
      {%- endif %}
      {%- if sg.last_updated %}
        Last updated on {{ sg.last_updated }}.
      {%- endif %}
      {%- if sg.show_sphinx %}
        Created using <a href="http://sphinx.pocoo.org/">Sphinx</a>
        {{ sg.sphinx_version }}.
      {%- endif %}
      {%- endif %}
      </div>
  {%- endblock %}
    </body>
  </html >
  



--------------
 web.pyを作成
--------------

さて、先ほど作成したのはDBを作るbuild部分でしたので、次に実際のWebアプリ部分を作ります。今回はflaskを使いました。

:: 

  #### sphinx part. same as build.py
  
  from sphinx.websupport import WebSupport
  from sphinx.websupport.errors import DocumentNotFoundError
  
  ROOT = '/Absolute/Path/To/Your/Document'
  SRCDIR = ROOT+'/source'
  BUILDDIR = ROOT+'/build/web'
  support = WebSupport(SRCDIR, BUILDDIR)
  
  #### flask part 
  
  from flask import Flask, render_template, abort, g, request, jsonify
  from jinja2 import Environment, FileSystemLoader
  
  app = Flask(__name__)
  # app.debug = True # デバッグ用フラグ
  
  app.jinja_env = Environment(loader = FileSystemLoader("_templates/"),
  			    extensions=['jinja2.ext.i18n'])
  app.root_path = BUILDDIR
  
  @app.route('/<path:docname>')
  def index(docname):
    try:
      document = support.get_document(docname)
    except DocumentNotFoundError:
      abort(404)
    return render_template('doc.html', document=document)


app.jinja_envとかapp.root_pathとかにハマったりしました。もうちょっとうまいやり方があるのかとは思いますがよく分かりません。識者に聞きたいところです。

------------------
 ディレクトリ構成
------------------

最終的に以下のようなディレクトリ構成になりました。

:: 

  - ROOT
    - Makefile
    - build.py
    - web.py
    - _template/
      - doc.html
      - base.html
    - source/
      - conf.py
      - index.rst
      - ..
    - build/
      - web <-- build.pyによって自動的に作られる
  
--------------
 えいやと実行
--------------

web.pyを実行すると、

::

  % python web.py
   * Running on http://127.0.0.1:5000/
   * Restarting with reloader...
  
とか出てくるので、 http://127.0.0.1:5000/index とかにアクセスしてみます。index.rstに書いてない人は適当に変えてくださいね。

ちゃんと表示された人、おめでとうございます！問題が起きた人、app.debugをTrueにしたりしてなんとかしてください。

--------------------
 コメント機能の追加
--------------------

これだけだとなんなんで、WebSupportの特徴である段落ごとにコメントが付けられる機能を追加します。

web.pyに以下の部分を追記します。

::

  @app.route('/_add_comment', methods=['POST'])
  def add_comment():
      parent_id = request.form.get('parent', '')
      node_id = request.form.get('node', '')
      text = request.form.get('text', '')
      proposal = request.form.get('proposal', '')
      username = None
      print node_id, parent_id, text
      comment = support.add_comment(text, node_id=node_id,
                                    parent_id=parent_id,
                                    username=username, proposal=proposal)
      return jsonify(comment=comment)
  
  @app.route('/_get_comments')
  def get_comments():
      username = None
      node_id = request.args.get('node', '')
      data = support.get_data(node_id, username=username)
      return jsonify(**data)


build.pyで作成されるwebsupport.jsが"_get_comments"や"_add_comment"というURLにアクセスしてきますので、それに対応したコメント追加機能を提供します。

本当はユーザ名で識別したり、モデレーターによるコメントの削除や提案の受理なんかができるんですけど、今回はめんどいので見送ります。表示されてるdeleteとかacceptとかいう文字はそういう提案の受理なんかに使われるようです。

----------
 検索機能
----------

WebSupportは `Xpian <http://xapian.org/>`_ や `Whoosh <https://bitbucket.org/mchaput/whoosh/wiki/Home>`_ を使った検索が出来ます。このうちpure pythonなWhooshを使ってみます。事前にWhooshを使えるようにしておいてください。

build.pyとweb.pyで、WebSupportの引数に"search"として使いたい検索エンジンの名前を付け加えます。

:: 

  support = WebSupport(SRCDIR, BUILDDIR,
  		     search='whoosh')


web.pyに、検索機能で飛んできた時の処理を付け加えます。

:: 

  @app.route('/search/')
  def search():
      q = request.args.get('q')
      document = support.get_search_results(q)
      return render_template('doc.html', document=document)

また、ハイライト処理のために、ドキュメントの表示時の動作を以下の関数に差し替えます。

:: 

  @app.route('/<path:docname>/')  # http://127.0.0.1/index/?highlight=<keyword>
  @app.route('/<path:docname>')
  def index(docname):
    try:
      h = request.args.get('highlight', '')
      if (h):
        document = support.get_document(docname.rstrip('/')) # delete last "/"
        document['body'].replace(h, '<strong>'+h+'</strong>')
      else:
        document = support.get_document(docname)
    except DocumentNotFoundError:
      abort(404)
    return render_template('doc.html', document=document)

で、こうしておいてから検索ボックスで検索すると、結果が出てきて、クリックするとハイライト表示になります。良かったですね！

…

あれ？日本語は…？検索できたり出来なかったり、というか出来ないほうが多いようです。

どうやらWebSupportのWhooshを使う部分ではインデックスを作る方式がStemmingAnalyzerという、英語の語幹を利用する方式に決め打たれているようです。
というわけで、アドホックな解決法として、N-gramに決め打つパッチを当てます。ちなみに、このパッチではデフォルトのminsize=2, maxsize=4 なN-gramが出来上がります。このあたり、本当はconf.pyに書くことで切り替えられるようにするべきでしょうね。

:: 

  diff -urN sphinx.orig/sphinx/websupport/search/whooshsearch.py sphinx/sphinx/websupport/search/whooshsearch.py
  --- sphinx.orig/sphinx/websupport/search/whooshsearch.py	2010-12-10 23:24:08.000000000 +0900
  +++ sphinx/sphinx/websupport/search/whooshsearch.py	2010-12-10 23:14:32.000000000 +0900
  @@ -10,9 +10,10 @@
   """
   
   from whoosh import index
  -from whoosh.fields import Schema, ID, TEXT
  +from whoosh.fields import Schema, ID, TEXT, NGRAM
   from whoosh.qparser import QueryParser
  -from whoosh.analysis import StemmingAnalyzer
  +# from whoosh.analysis import StemmingAnalyzer
  +from whoosh.analysis import NgramAnalyzer
   
   from sphinx.util.osutil import ensuredir
   from sphinx.websupport.search import BaseSearch
  @@ -24,7 +25,7 @@
       # Define the Whoosh Schema for the search index.
       schema = Schema(path=ID(stored=True, unique=True),
                       title=TEXT(field_boost=2.0, stored=True),
  -                    text=TEXT(analyzer=StemmingAnalyzer(), stored=True))
  +                    text=NGRAM(stored=True))
   
       def __init__(self, db_path):
           ensuredir(db_path)

この後、build.pyを再び実行すれば、快適な検索が出来ます。やったね！

あ、そうそう、N-gramに変更したことにより、出来上がるDBのサイズがかなり大きくなりますのでご注意を。

-----
注意
-----

WebSupportはまだ発展途上です。今後大幅に変わる可能性もありますので、その点に留意してお使いください。
