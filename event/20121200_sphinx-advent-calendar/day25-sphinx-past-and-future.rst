.. =========================
.. Sphinx, past and future
.. =========================

Sphinxの過去と、未来
=======================

:著者: `Georg Brandl`_
:日付: 2012/12/25
:原文: `Sphinx, past and future`__
:翻訳: `@r_rudi`_, `@shimizukawa`_

.. __: http://pythonic.pocoo.org/2012/12/25/sphinx-past-and-future
.. _`Georg Brandl`: http://www.pocoo.org/team/#georg-brandl
.. _`@r_rudi`: https://twitter.com/r_rudi
.. _`@shimizukawa`: https://twitter.com/shimizukawa

.. [This entry was written on request for the Japanese <a
.. href="http://connpass.com/event/1441/">"Sphinx advent calendar"</a>.
.. These guys are amazing!  They even held a <a
.. href="http://connpass.com/event/1441/">Sphinx conference</a> this
.. year, with 70 people present.]

このエントリーは日本語の `Sphinx Advent Calendar 2012`__ に参加してくれないかというリクエストに応えて書いています。彼らはすごいよ！彼らは今年Sphinx Conferenceを開催して、イベントには70人もの人たちが集まったんだ！

.. __: http://connpass.com/event/1441/

.. <p><a href="http://sphinx-doc.org/">Sphinx</a> is now more than five
.. years old, and it is probably not unreasonable to take a quick look
.. back at the history, as well as the future.

Sphinx_ はいまや5歳になってるし、たぶん今までの歴史を振り返り、将来を語るのに良い時期じゃないかな。

.. _Sphinx: http://sphinx-doc.org/

.. <p>The project started sometime in early 2007; <a
.. href="http://mail.python.org/pipermail/doc-sig/2007-May/003606.html">this
.. post</a> is the earliest mention I could find on the Python mailing
.. lists.  At the time, the source for the Python documentation was in
.. LaTeX, which I absolutely love for writing scientific content, but I
.. didn't (and don't) think suitable for code documentation: it is not an
.. obvious markup language, and it deters contributors from the
.. documentation -- although we always stressed we'd accept any form of
.. text. 

このプロジェクトは2007年前半のいつ頃かに始まった。 `この投稿`__ は私がPythonメーリングリストで見つけた中で一番古い。この時、Pythonのドキュメント作成のためのソースはLaTeXで書かれていた。私は科学的な文章を書くときには絶対LaTeXを使うぐらい好きだけど、その時(今もだけど)思ったのは、LaTeXはコードのドキュメントを書くには適していないってこと。あれは明らかにマークアップ言語ではないし、ドキュメントへの協力を躊躇させてしまう。それで我々はいつもいろんな形式のテキストを受け取るのに苦しんでいたんだ。

.. __: http://mail.python.org/pipermail/doc-sig/2007-May/003606.html

.. Also, the source was not readily available, and the mapping
.. from a HTML page (which is where most users saw errors) to a file in
.. the documentation source was not obvious.  Don't even ask about the
.. toolchain needed to convert the source to HTML (it involved a certain
.. 4-letter language, which is not something a Python developer relishes
.. in hacking in).

また、そのソースは簡単には使えなかったし、HTMLページ(しかもそのHTMLページにはほとんどのユーザにエラーが出ていた)からドキュメントソース中のファイルへのマッピングは分かりにくかった。あ、そのときソースからHTMLに変換するのに使っていたツールチェインについては聞かないで。(これはPython使いがハックしたいと思わない例の4文字の言語と密接に関連してた)

.. <p>My code sought to change this, using the already somewhat established reStructuredText and its implementation "docutils" as the
.. basis.  reST is maybe not the prettiest markup language out there, but at the time (and even more today) it fulfilled several requirements:
.. <ul>
.. <li>lightweight markup (simple documents are readable without "disturbing" character noise)
.. <li>easily extendable (both code-wise and markup-wise)
.. <li>Python implementation available
.. <li>a strong bond to Python (reST is specified as markup language in several PEPs)
.. </ul>

私は、その頃一部で使われ始めていたreStructuredTextとその実装の「docutils」を基盤としたコードを書いて、この状況を変えようとしていた。reSTはたぶん一番きれいなマークアップ言語ではないだろうけど、その時は(そして今も)いくつかの要求を満たしていたんだ。

- 軽量なマークアップ(シンプルで、読むのに「邪魔」になる文字がない)
- 簡単に拡張できる (codeでもマークアップでも)
- Python実装がある
- Pythonと強い結びつきがある (reSTはいくつかのPEPでマークアップ言語として指定されている)


.. <p>With lots of "+1" for the new format (and the new "green" design,
.. which was created by <a href="http://lucumr.pocoo.org/">Armin</a>),
.. the new toolchain was accepted by python-dev, and in August I
.. converted the whole Python docs.  (By the way, that was in the middle
.. of the initial Python 3000 work, which is another fascinating
.. story...)  Some features were still missing, and some took a long time
.. to finally get implemented, such as chapter numbering.

新しいフォーマット(それと Armin_ が作った新しい「グリーンな」デザイン)はたくさんの「+1」を受け取り、新しいツールチェインがPython-devで受け入れられた。それで、8月に私はPythonドキュメントをすべて変換したんだ。(ところで、あれは初期のPython 3000の作業をしてる真っ最中だったんだ。これに関してはまた別の興味をそそられる物語があってね…)いくつかの機能はまだなかったし、チャプター番号の自動採番とか実装に長い時間がかかった機能もあるけどね。

.. _Armin: http://lucumr.pocoo.org/

.. <p>Now that Python had a nice shiny new documentation, a lot of people
.. asked "I CAN HAZ?".  I had not considered that, mostly because the
.. "old LaTeX system" was also available for the public, and nobody
.. seemed to be using it.  (In fact, thinking back, I don't recall what
.. people actually <i>were</i> using.  If you still remember, let me
.. know!)

こうしてPythonは素敵で輝いている新しいドキュメンテーションツールを手に入れ、たくさんの人が「うちでも使える？」って聞いてきた。私はそんな反応があるとは思ってもなかった。なんでかというと「古いLaTeXシステム」は公開されていたけれど、誰もそれを使っているようには見えなかったからね [1]_ 。(事実、今思い返してみても、誰がLaTeXシステムを使って **いた** か本当に思い出せないよ。もし覚えていたら教えてね！)

.. [1] 訳注: ドキュメントを書きたがっている人がいるとは思っていなかった

.. <p>But with a system that was actually kind of Pythonic and made
.. certain things easy, it seems I had hit a sweet spot.  Quickly, the
.. project named Sphinx was born.  Today I wish I had found a better name
.. that wasn't already taken; at the time, it was a play on the "Pyramid"
.. system used for the python.org website.  Apologies to <a
.. href="http://cmusphinx.sourceforge.net/">CMU Sphinx</a> and <a
.. href="http://sphinxsearch.com/">Sphinx search</a>, both of which I've
.. since used and which are great projects.  (Amusingly, the latter also
.. uses an "eye of Horus" logo.  No, I didn't know about this then.)

それでも、Pythonicでドキュメント変換を簡単にしたシステムは、良いものを作ったように見えたんだ。すぐにSphinxという名前をつけたプロジェクトが誕生した。今は、他で使われていないもっと良い名前を見つけたいと願ってるけど、その時はpython.orgのWebサイトで使っている "Pyramid" システムとかけてたんだ。 `CMU Sphinx`_ と `Sphinx search`_ は両方共私は使ったことがあるし、どちらもすごいプロジェクトだ。彼らには謝らなければならないね。(おもしろいことに、Sphinx searchも「ホルスの目」のロゴを使ってるんだ。いや、私はその時ほんとにそのことを知らなかったんだよ)

.. _`CMU Sphinx`: http://cmusphinx.sourceforge.net/
.. _`Sphinx search`: http://sphinxsearch.com/

.. <p>But Sphinx it was, and it became popular so quickly I was
.. completely surprised.  You can look at the <a
.. href="https://bitbucket.org/birkenfeld/sphinx/history-node/c9e52dbef198/EXAMPLES?page=5">history</a>
.. of the <a href="http://sphinx-doc.org/examples.html">"who uses it"
.. page</a>; the best thing was that a couple of big projects like
.. Django, numpy and matplotlib jumped on the train quite fast.

そういうことはあるけど、Sphinxはあっという間に人気になり、私はとてもびっくりしたよ。 `Sphinxを使っているプロジェクト`_ の `編集履歴`_ を見てみてよ。Django、numpy、matplotlibなどのいくつかの大きなプロジェクトはとても早い時期から導入したね。

.. _`Sphinxを使っているプロジェクト`: http://sphinx-doc.org/examples.html
.. _`編集履歴`: https://bitbucket.org/birkenfeld/sphinx/history-node/c9e52dbef198/EXAMPLES?page=5

.. <p>Since the codebase was completely adapted to the needs of Python,
.. it took quite a while at first to remove all specifics and hardcoded
.. strings.  But once that was done, I could advance quickly to implement
.. features; most notably one feature that Python doesn't use, but most
.. others do: <b>autodoc</b>.  <a
.. href="http://sphinx-doc.org/ext/autodoc.html">autodoc</a> is a big
.. deal since it represents what I consider a near-perfect match between
.. <i>automatically generated</i> and <i>hand-written</i> documentation.
.. Auto-generated things are usually ugly beasts that you can only make
.. sense of if you already know a lot about the software you're reading
.. about.  Tutorials usually have no place there, since you wouldn't want
.. to put them into your source code files.  Hand-writing documentation
.. is tedious and a mountainous job, but usually leads to docs that are 
.. easy to read and understand, and can include more prose than you're
.. comfortable putting into your source files.  That's why Python does it
.. that way.

コードベースをPython用に完全に合わせていたので、全部のPython固有のコードやハードコード文字列を取り除くのにはかなり時間がかかったよ。でも、一旦その作業が終わると、拡張機能を素早く実装できるようになったんだ。Pythonが使っていないけど他ので使っている一番大きな機能は autodoc_ だね。私は、autodocはドキュメントの *自動生成* と *手書き* との間のほぼ完璧なバランスを取れていると思っているから、とても大事な機能だね。自動生成されたものは大抵醜い獣となり、すでに良く知っているソフトウェアでなければ理解できない程度になる。チュートリアルはソースコードの中にいれたくないから、置き場所がない。手書きのドキュメントは書くのが退屈で山のように書く必要があるけれど、大体の場合これがあるとドキュメントが読みやすくて分かりやすくなるから、個別の解説文はソースコードの中に入れられるようになる。だからPythonはこの方法を取っているんだ。

.. _autodoc: http://sphinx-doc.org/ext/autodoc.html

.. <p>autodoc combines both in a fashion that I think makes sense: you
.. hand-write the overall structure of your docs, write prose as
.. necessary, and order the description of API items as it makes sense
.. from a logical point of view, not an implementation point of view.
.. Then you include documentation of the API items from docstrings.

autodocは理にかなってると思えるこれら両方の様式を兼ね備えている。ドキュメントの全構造を手で書き、必要に応じて解説文を書き、実装の観点からではなく論理的な観点からAPIの説明を分かりやすく並べ変える。それから、各APIのdocstringをドキュメントに埋め込む


.. <p>Other than autodoc, lots of other features were added over the years.  The highlights are, in no special order:
.. <ul><li>Linking between documentations with <a href="http://sphinx-doc.org/ext/intersphinx.html">intersphinx</a>
.. <li>Including <a href="http://sphinx-doc.org/ext/doctest.html">doctests</a> and running them from Sphinx
.. <li>HTML <a href="http://sphinx-doc.org/theming.html">themes</a>, with a number of themes now available 
.. <li>Media support, including <a href="http://sphinx-doc.org/ext/math.html">mathematics</a> and
.. <a href="http://sphinx-doc.org/ext/graphviz.html">diagrams</a>
.. <li>Support for more output formats, such as Texinfo and Epub
.. </ul>

この何年かでautodocの他に、たくさんの機能が追加された。コードハイライトは特別な機能ではなくなったね。

- intersphinx_ で複数のドキュメントをつなぐ
- doctest_ を含めて、Sphinxから実行できるように
- `HTML テーマ`_ は標準のもの以外にもいくつか増えてきたね
- `数式`_ や `ダイアグラム`_ といったメディアのサポート
- TexinfoやePubなどのたくさんの出力フォーマットをサポート

.. _intersphinx: http://sphinx-doc.org/ext/intersphinx.html
.. _doctest: http://sphinx-doc.org/ext/doctest.html
.. _`HTML テーマ`: http://sphinx-doc.org/theming.html
.. _`数式`: http://sphinx-doc.org/ext/math.html
.. _`ダイアグラム`: http://sphinx-doc.org/ext/graphviz.html

.. <p>Our milestones can be seen <a
.. href="http://sphinx-doc.org/changes.html">here</a>.  The "big" 1.0
.. release took place in 2010, with the addition of <a
.. href="http://sphinx-doc.org/domains.html">"domains"</a> that extend
.. the reach of Sphinx to languages other than Python.  As can be
.. expected, we have not taken over the whole world ... yet :)

これまでのマイルストーンは `ここ`_ で見れるよ。「大きな」 1.0リリースは2010年に domain_ の追加とともに行われた。domainはPython以外の言語へとSphinxの範囲を広げたんだ。でも期待したようには世界全体を取れていない… まだ、ね :)

.. _`ここ`: http://sphinx-doc.org/changes.html
.. _domain: http://sphinx-doc.org/domains.html

.. <p>Until recently, Sphinx has always been more or less a dictatorship.
.. Not that there weren't lots of contributions!  In 2010, Sphinx even
.. had several Summer of Code students, working on features as diverse as
.. Python 3 porting, internationalization and the web application
.. interface.  But in the end, I was overseeing all fixes and pull
.. requests.  And with my graduate studies beginning, I found myself with
.. less and less time to master that mountain of work.

最近までSphinxはわりと独裁的に開発されていた。あ、それまでも多くの貢献があったんだよ！2010年には、Sphinxにサマーオブコード学生達が何人かやってきてPython 3の移植、国際化、Webアプリケーションインタフェースといった機能を開発してくれたんだ。でも、最終的には私は全ての修正やプルリクエストに目を通してきた。でも、私の大学院生活が始まった時、大量のやるべき事の前に、自分の人生がとても短い時間でしかないことが分かったんだ。

.. <p>Therefore, this year we formed a team of developers working on the
.. future of Sphinx.  So far, the push privileges have been given to
.. <ul>
.. <li>Ervin Hegedüs
.. <li>Jon Waltman
.. <li>Kevin Hunter
.. <li>La Min Ko
.. <li>Nikolaj van Omme
.. <li>Robert Lehmann
.. <li>Roland Meister
.. <li>Takayuki Shimizukawa
.. </ul>

こういった事があって、今年、Sphinxの未来を作っていく開発者のチームを編成したんだ。これまでのところ、以下の人たちにpush権限を与えている。

- Ervin Hegedüs
- Jon Waltman
- Kevin Hunter
- La Min Ko
- Nikolaj van Omme
- Robert Lehmann
- Roland Meister
- 清水川 貴之


.. <p>I'm very grateful to all of them.  There is also a new <a
.. href="http://groups.google.com/group/sphinx-dev/">sphinx-dev</a>
.. mailing list for development coordination, while the support and user
.. list has moved to <a
.. href="http://groups.google.com/group/sphinx-users/">sphinx-users</a>.
.. Since the formation of the development team, a lot has moved and the
.. 1.2 release with mostly bug fixes and a few new features is very near.

私は彼ら全員にとても感謝しています。また、新しい `sphinx-dev ML`_ を開発者の連携のために立ち上げ、それまでその名前で利用者向けのサポートを行っていたMLを `sphinx-users ML`_ に移した。この開発者チームの編成により物事が動き始め、たくさんのバグといくつかの新機能を搭載した1.2がもうすぐリリースされることになった。

.. _`sphinx-dev ML`: http://groups.google.com/group/sphinx-dev/
.. _`sphinx-users ML`: http://groups.google.com/group/sphinx-users/

.. <p>How do we go on?  I consider the feature set quite complete, but
.. there are always some things missing.  Well, these are my and the
.. team's thoughts about the future development:

これからどうするのかって？私は機能的には十分だと思っているけど、いつだってなにかしら不足はあるものだね。そう、私と開発者チームはこれからの開発でこんなことを考えている。

.. <ul>
.. <li>Our version of fully automatic doc generation, sphinx-apidoc, is
.. not very smart yet, since I've never been a fan of complete
.. automation.  But I recognize that others are interested in that.
.. <li>Autodoc should become more debuggable.  For example, the intermediate generated reST should become accessible.
.. <li>The internationalization feature is not widely used yet, mostly because there are still some warts in the implementation.
.. We plan to fix these, and make a good example by starting to use it for Sphinx itself, with documentation translated to
.. as many languages as possible.
.. <li>The web application support should become easier to use, to e.g. have easy inclusion of comments and suggestions from
.. users.
.. <li>The docutils have grown support for many things pioneered in Sphinx, such as mathematics and code highlighting.  I would
.. like to merge these features, which at the moment use incompatible markup.
.. </ul>

- 私が完全な自動化をあんまり好きではないため、自動ドキュメント生成のsphinx-apidocはそんなに頭が良くない。でも、他の人は興味があると思う。
- Autodocはもっとデバッグが簡単になるべき。例えば、中間生成されているreSTにアクセスできるべき。
- 国際化機能はそんなに広く使われていない。おそらく実装にいくつかの欠点がまだあるから。我々は欠点を修正し、できる限り多くの言語にSphinx自身のドキュメントを翻訳する事で、良い例を作っていきたい。
- Webアプリケーションサポートはもっと簡単に使えるようになるべき。例えばコメントを含めたりユーザーからの提案を簡単にしたり。
- docutilsは数式やコードハイライトなど、Sphinxが開拓してきた多くの機能をサポートしようと成長してきた。私はこういった、違うマークアップで同じ機能を提供している部分を統合したいと思っているよ。

.. <p>That's it for now.  Merry Christmas!

今はこんなところ。メリークリスマス！
