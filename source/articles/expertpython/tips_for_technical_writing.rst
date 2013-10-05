.. ====================================
   The Seven Rules of Technical Writing
   ====================================

================================
技術文書を書くための７つのルール
================================

.. Writing good documentation is easier in many aspects than writing a code. Most developers think it is very hard, but by following a simple set of rules it becomes really easy. 

さまざまな面から見て、良いドキュメントを書くことは、良いコードを書くよりも簡単です。多くの開発者はドキュメントを書くのはとても難しいことであると考えていますが、いくつかのシンプルなルールに従うだけで、本当に簡単になります。

.. We are not talking here about writing a book of poems but a comprehensive piece of text that can be used to understand a design, an API, or anything that makes up the code base. 

ここでお話しするのは、ポエムの本を書くための方法ではなく、プログラムの設計やAPI、コードベースを作り上げる上で、必要となるものを理解するための包括的なテキストを書くための方法になります。

.. Every developer is able to produce such material, and this section provides seven rules that can be applied in all cases. 

全ての開発者はそのようなテキストを書くことができます。本節ではあらゆる場面で適用できる7つのルールを提供します。

.. * Write in two steps: Focus on ideas, and then on reviewing and shaping  
   your text. 

* ２つのステップで書く: まずはアイディアにフォーカスし、その後レビューを行ってテキストの形を整えます。

.. * Target the readership: Who is going to read it? 

* 読者のターゲットを明確にする: それを読むのはだれですか？

.. * Use a simple style: Keep it straight and simple. Use good grammar. 

* シンプルなスタイルを使用する: 分かり易くシンプルに保ちます。正しい文法を使用しましょう。

.. * Limit the scope of the information: Introduce one concept at a time. 

* 情報のスコープを絞る: 一度に1つの概念だけを導入します。

.. * Use realistic code examples: Foos and bars should be dropped. 

* 実在するようなコードのサンプルを使用する: Foo, Barはもうやめましょう。

.. * Use a light but sufficient approach: You are not writing a book! 

* なるべく少なく、かつ十分なドキュメント: あなたが書いているのは書籍ではありません！

.. * Use templates: Help the readers to get habits. 

* テンプレートの使用: 読み手がどこに何が書いてあるかを把握しやすくなります

.. These rules are mostly inspired and adapted from Agile Documenting, a book by Andreas Ruping that focuses on producing the best documentation in software projects. 

これらのルールは"Agile Documenting(洋書)"（著：Andreas Ruping、Wiley刊）にインスパイアされています。その本の中で書かれていることにも適合します。この本はソフトウェアプロジェクトの中で最高のドキュメントを生成する方法に焦点をあてています。

.. Write in Two Steps 
   ==================

2つのステップで書く
===================

.. Peter Elbow, in Writing with Power, explains that it is almost impossible for any human being to produce a perfect text in one shot. The problem is that many developers write documentation and try to directly come up with a perfect text. The only way they succeed in this exercise is by stopping the writing after every two sentences to read them back, and do some corrections. This means that they are focusing both on the content and the style of the text. 

Peter Elbowは著書"Writing with Power"(洋書)の中で、どんな人も、一回で完璧な文章を書くことはほぼ不可能であるということを説明しています。多くの開発者がドキュメントを書くときに、直接完全なテキストを書き上げようとするところに問題があります。これを改善するプラクティスの一つは、毎回2行だけ文章を書き、読み返して修正するというものです。これをすると、文章の作成と、テキストのスタイルの両方にフォーカスすることになります。

.. This is too hard for the brain and the result is often not as good as it could be. A lot of time and energy is spent in polishing the style and shape of the text, before its meaning is completely thought through. 

この方法には、脳には負担がかかりすぎるのと、結果が最良のものになるとは限らないという問題があります。内容を十分に考える前に、多くの時間とエネルギーをテキストのスタイルと形を整えるのに費やしてしまうからです。

.. Another approach is to drop the style and organization of the text and focus on its content. All ideas are laid down on paper, no matter how they are written. The developer starts to write a continuous stream and does not pause when he or she makes grammatical mistakes, or for anything that is not about the content. For instance, it does not matter if the sentences are barely understandable as long as the ideas are written down. He or she just writes down what he wants to say, with a rough organization. 

別の方法は、まずはスタイルと構成を考えないで、中身にフォーカスするというものです。どのように書くかは別にして、全ての考えをまず紙の上に書き出します。開発者は、流れるように次々と書いていきます。文法まちがいを理由に手を止めてはいけません。文法は内容に関わることではないからです。考えていることを紙に書き出し続けている限りは、文の意味がほとんど理解できなくても問題はありません。まずは言いたいことを、大ざっぱに分類しながら書き出すことだけに集中します。

.. By doing this, the developer focuses on what he or she wants to say and will probably get more content out of his or her brain than he or she initially thought he or she would.

そうしていくと、開発者は自分が言いたかった内容にのみ意識を集中させることができるため、最初に考えていたよりも多くの内容が頭の中から次々に出てくるようになります。

.. Another side-effect when doing free writing is that other ideas that are not directly related to the topic will easily go through the mind. A good practice is to write them down on a second paper or screen when they appear, so they are not lost, and then get back to the main writing. 

この方法には、直接は関係ないトピックに関するアイディアも容易に出てきやすくなるという、別の効果もあります。そのようなアイディアが出てきた場合には、別の紙かファイルに書き出すようにしましょう。そのように残しておけばその内容が失われることはありませんし、今取りかかっているメインのドキュメントに、すぐに戻ることができます。

.. The second step consists of reading back the whole text and polishing it so that it is comprehensible to everyone. Polishing a text means enhancing its style, correcting its faults, reorganizing it a bit, and removing any redundant information it has. 

二番目のステップは、今書いた全文を読み返して、多くの人に分かりやすいように磨き上げる作業になります。テキストを磨くというのは、スタイルを良くして、間違いを直し、構成を直し、重複した情報を整理するということです。

.. When the time dedicated to write documentation is limited, a good practice is to cut this time in two equal durations one for writing the content, and one to clean and organize the text. 

ドキュメントを書くために使用できる時間が限られているときは、この二つのステップ(一番目のステップで内容を書き出し、二番目のステップでテキストを掃除してまとめる)の時間のうち、二番目の時間を削って一番目と同じ程度にすると良いでしょう。


.. Focus on the content, and then on style and cleanliness. 

.. note::

   まずは中身にフォーカスしましょう。スタイルときれいさは二の次です。

.. Target the Readership 
   =====================

読者のターゲットを明確にする
============================

.. When starting a text, there is a simple question the writer should consider: Who is going to read it? 

テキストを書き始める時に、ドキュメント作成者が考えておくべきシンプルな質問が一つだけあります。それは「誰がそのドキュメントを読むのか？」です。

.. This is not always obvious, as a technical text explains how a piece of software works, and is often written for every person who might get and use the code. The reader can be a manager who is looking for an appropriate technical solution to a problem, or a developer who needs to implement a feature with it. A designer might also read it to know if the package fits his or her needs from an architectural point of view. 

これは、いつも明確になっているわけではありません。ソフトウェアを構成するパーツがどのように動作しているかを説明しているドキュメントであれば、そのコードを入手して使用するすべての人に対して書かれる場合がほとんどでしょう。読者は、問題に対して適切な技術的解決策を探しているマネージャかもしれませんし、そのコードに新しい機能を追加する必要のある開発者かもしれません。設計者は、アーキテクチャの視点から、そのパッケージが自分のニーズに合っているかどうかを知るために読むでしょう。

.. Let's apply a simple rule: Each text should have only one kind of readers. 

ドキュメントを書く場合には、シンプルなルールを適用しましょう。それぞれのテキストには、1種類の読者のみを設定すべきです。

.. This philosophy makes the writing easier. The writer precisely knows what kind of reader he or she is dealing with. He or she can provide a concise and precise documentation that is not vaguely intended for all kinds of readers. 

この哲学を持ってドキュメント作成に取りかかると作業が簡単になります。ドキュメント作成者はその読者が何をしているのかを正確に知ることができるため、簡潔で正確なドキュメントを提供できるようになります。幅広い読者に合わせようとして漠然としたドキュメントになることがなくなります。

.. A good practice is to provide a small introductory text that explains in one sentence what the documentation is about, and guides the reader to the appropriate part: 

それぞれのドキュメントが何のために書かれているのか、というのを紹介する文をそれぞれ1行だけ付けるのは良いプラクティスです。このコンパクトな説明によって、読者を適切なドキュメントに誘導することができます:

.. Atomisator is a product that fetches RSS feeds and saves them in a 
   database, with a filtering process. 

   If you are a developer, you might want to look at the API description 
   (api.txt) 

   If you are a manager, you can read the features list and the FAQ 
   (features.txt) 

   If you are a designer, you can read the architecture and 
   infrastructure notes (arch.txt) 

::

   AtomisatorはRSSフィードを取得して、フィルタリングを行ってから
   データベースに格納する製品です。

   あなたが開発者なら、APIの説明(api.txt)をお読み下さい。

   あなたがマネージャなら、機能リストとFAQ(features.txt)をお読みください。

   設計者であれば、アーキテクチャとインフラストラクチャに関するメモ
   (arch.txt)をお読み下さい。

.. By taking care of directing your readers in this way, you will probably produce better documentation. 

このように、読者の思っていることに注意することで、良いドキュメントが作成できるようになります。

.. Know your readership before you start to write. 

.. note::

   書き始める前に、読者が誰かを知っておきましょう。

.. Use a Simple Style 
   ==================

シンプルなスタイルを使用する
============================

.. Seth Godin is one of the best-selling writers on marketing topics. You might want to read Unleashing the Ideavirus, which is available for free on the Internet (http://en.wikipedia.org/wiki/Unleashing_the_Ideavirus). 

Seth Godinはマーケティングの分野における、ベストセラー作家の一人です。あなたが興味を持つと思われる"Unleashing the Ideavirus"(邦題: バイラルマーケティング-アイディアバイルスを解き放て！-)はインターネット上で無料で読むことができます(http://en.wikipedia.org/wiki/Unleashing_the_Ideavirus)。

.. Lately, he made an analysis on his blog to try to understand why his books sold so well. He made a list of all best sellers in the marketing area and compared the average number of words per sentences in each one of them. 

彼は最近、自分の本が売れた理由を理解しようと、ブログ上で分析を行いました。彼はマーケティングの分野のすべてのベストセラーのリストを作成し、それぞれの本の一文当たりの平均ワード数を比較しました。

.. He realized that his books had the lowest number of words per sentence (thirteen words). This simple fact, Seth explained, proved that readers prefer short and simple sentences, rather than long and stylish ones. 

彼が発見したのは、彼の本の文は平均13ワードで、他の本と比べて一番短かったということでした。このシンプルな事実から、読者は長くてスタイリッシュな文よりも、短くて簡単な文を好むことが証明できた、と彼は説明しています。

.. By keeping sentences short and simple, your writings will consume less brain power for their content to be extracted, processed, and then understood. Writing technical documentation aims to provide a software guide to readers. It is not a fiction story, and should be closer to your microwave notice than to the latest Stephen King novel. 

文章を短く保つと、読者が内容を読み取って、処理をして理解するために必要な脳のエネルギー消費が少なくなります。技術的なドキュメントの目的は、読者に対してソフトウェアのガイドを提供することです。フィクションの物語を書いているわけではないため、Stephen Kingの小説よりも、電子レンジの説明書の方に近い文章にすべきです。

.. A few tips to keep in mind are: 

シンプルにするために覚えておくべきTipsは次の通りです:

.. * Use simple sentences; they should not be longer than two lines. 
   * Each paragraph should be composed of three or four sentences, at the most, 
     that express one main idea. Let your text breathe. 
   * Don't repeat yourself too much: Avoid journalistic styles where ideas are 
     repeated again and again to make sure they are understood. 
   * Don't use several tenses. Present tense is enough most of the time. 
   * Do not make jokes in the text if you are not a really fine writer. 
     Being funny in a technical book is really hard, and few writers master it. 
     If you really want to distill some humor, keep it in code examples and you 
     will be fine. 

.. Tarek:
     It's a metaphor. For example if you put a rabbit in a very small box,
     it will have hard time to breathe? Here, the idea is the rabbit,
     and the text is the box. It means that you shouldn't have in the
     same paragraph too many ideas, otherwise the reader would be lost.

* シンプルな文を使用しましょう。2行以上にわたる文であってはなりません。
* 各段落は、最長でも3つか4つの行で構成され、主要な1つの考えのみを説明します。ウサギ(=その考え)が呼吸できるように。 [#]_
* 何度も繰り返さないようにしましょう。読者に理解させようとする場所で、何度も何度も考えを繰り返すような、ジャーナリスト的なスタイルは避けましょう。
* 複雑な時制は不要です。現在形で十分です。
* 本当に優れたドキュメント作成者でなければ、ジョークを入れてはいけません。技術文書をユーモラスにするのは困難です。それをマスターしている作成者は少ししかいません。どうしてもジョークを入れたい場合にはコードサンプルに限定してください。そうすれば満足が行くでしょう。

.. rubric:: 脚注
.. [#] ウサギ(=考え)たちを小さな箱に詰め込みすぎると、息ができなくなるので、箱に入れるウサギは１匹にしましょう。

.. You are not writing fiction, so keep the style as simple as possible. 

.. note::

   あなたが書いているのはフィクションではないので、できるだけシンプルなスタイルにしましょう。

.. Limit the Scope of the Information 
   ==================================

情報のスコープを絞る
====================

.. There's a simple sign of bad documentation in a software: You are looking for some information that you know is present somewhere, but you cannot find it. After spending some time reading the table of contents, you are starting to grep the files trying several word combinations, but cannot get what you are looking for. 

ソフトウェアの世界では、悪いドキュメントかどうかを簡単に見分けるサインがあります。あなたは今、とあるドキュメントの中から情報を探そうとしています。どこかに存在することはわかっているのですが、それを見つけることができません。目次をじっと解読しても、grepコマンドを使っていくつかの単語の組み合わせを試してファイルの中を検索しても、あなたがが探しているものは見つけることはできません。

.. This happens when writers are not organizing their texts in topics. They might provide tons of information, but it is just gathered in a monolithic or non-logical way. For instance, if a reader is looking for a big picture of your application, he or she should not have to read the API documentation: that is a low-level matter. 

このような事態は、ドキュメント作成者がテキストを話題ごとにきちんとまとめていないときに発生します。その作成者はかなり大量の情報を提供しているかもしれませんが、整理せずにただ1つに集めたにすぎません。たとえば、読者がアプリケーションの概要を知りたがっているときには、APIのドキュメントを読む必要はありません。APIドキュメントには細かい低レベルの説明しかないからです。

.. To avoid this effect, paragraphs should be gathered under a meaningful title for  a given section, and the global document title should synthesize the content in a short phrase. 

関連のあるセクションにパラグラフをきちんと納め、意味のあるタイトルを付けると、このような事態を避けることができます。ドキュメントのタイトルは、コンテンツを統合した短いフレーズにします。

.. A table of contents could be made of all the section's titles. 

良いタイトルが付いていれば、すべてのセクションのタイトルを集めるだけで目次ができあがります。

.. A simple practice to compose your titles is to ask yourself: What phrase would I type in Google to find this section? 

タイトルを考えるときには、「私はこのセクションを見つけるために、どのような文をタイプしてGoogleで検索するだろうか？」と自分に質問するという、簡単な習慣を身につけましょう。

.. Use Realistic Code Examples 
   ===========================

実在するようなコードのサンプルを使用する
========================================

.. Foo and bar are bad citizens. When a reader tries to understand how a piece of code works with a usage example, having an unrealistic example will make it harder to understand. 

Foo, Barを利用するのは悪い習慣です。読者がコードサンプルを読んでそのコード片を理解しようとしたときに、現実的なサンプルでなければ理解はしにくくなります。

.. Why not use a real-world example? A common practice is to make sure that each code example can be cut and pasted in a real program. 

なぜ現実世界のサンプルを使用しないのでしょうか？コードのサンプルを実際のプログラムにカット・アンド・ペーストできるようにするのは一般的なプラクティスです。

.. An example of bad usage is: 

.. We have a parse function:
   Let's use it

悪い使用例のサンプルです。

.. code-block:: rst

    パースのための関数が用意されています::
 
       >>> from atomisator.parser import parse 

    次のようにしてパースの関数を利用することができます:

       >>> stuff = parse('some-feed.xml') 
       >>> stuff.next() 
       {'title': 'foo', 'content': 'blabla'} 

.. A better example would be when the parser knows how to return a feed content with the parse function, available as a top-level function:

.. Let's use it

次の例は良いサンプルです。トップレベルの関数として提供されているパーサ関数が、どのようなフィード内容を返すかを知ることができるでしょう。

.. code-block:: rst

   パースのための関数が用意されています::

       >>> from atomisator.parser import parse

   次のようにしてパースの関数を利用することができます::

       >>> my_feed = parse('http://tarekziade.wordpress.com/feed') 
       >>> my_feed.next() 
       {'title': 'eight tips to start with python',   
        'content': 'The first tip is..., ...'} 

.. This slight difference might sound overkill, but in fact it makes your documentation a lot more useful. A reader can copy those lines into a shell, understands that parse uses a URL as a parameter, and that it returns an iterator that contains blog entries. 

わずかな違いに対して強調しすぎだと思われるかもしれませんが、この差はドキュメントの便利さにとっての大きな差となります。読者はこのサンプルのコードをコピーして、簡単にインタラクティブシェル上で動かしてみることができます。その結果、このパーサがパラメータにURLを指定して動作するということを理解し、ブログのエントリーを含むイテレータを返すということが理解できるでしょう。

.. Code examples should be directly reusable in real programs. 

.. note::


   サンプルコードは、実際のプログラムとして直接再利用できるようにすべきです。

.. Use a Light but Sufficient Approach 
   ===================================

なるべく少なく、かつ十分なドキュメント
======================================

.. In most agile methodologies, documentation is not the first citizen. Making software that works is the most important thing, over detailed documentation. So a good practice, as Scott Ambler explains in his book Agile Modeling: Effective Practices for Extreme Programming and the Unified Process, is to define the real documentation needs, rather than creating an exhaustive set of documents. 

ほとんどのアジャイルな方法論においては、ドキュメントは一番大切なものではありません。詳細に書かれたドキュメントを書くよりも、実際に動作するソフトウェアを作ることの方が大切です。Scott Amblerによって書かれた『アジャイルモデリング――XPと統一プロセスを補完するプラクティス(原題"Agile Modeling"』（訳：株式会社オージス総研、翔泳社刊）には、次のような良いプラクティスが書かれています。「エクストリーム・プログラミングと統一プロセスの両方にとって効果的なプラクティスは、徹底的にドキュメントを作成していくのではなく、本当に必要なドキュメントのニーズを明確にすることである」

.. For instance, a single document that explains how Atomisator works for administrators is sufficient. There is no other need for them than to know how to configure and run the tool. This document limits its scope to answer to one question: 

たとえば、Atomisatorがどのように動作しているのかをシステム管理者に説明するには、ドキュメントが1つあれば十分です。どのようにそのツールを設定して実行すればいいのかという方法以外の情報はまったく必要ありません。このドキュメントのスコープは次の質問に答えることができる範囲に限定されます:

..  How do I run Atomisator on my server? 

::

  私はどのようにすれば、Atomisatorを自分のサーバ上で実行できるのか？

.. Besides readership and scope, limiting the size of each section written for the software to a few pages is a good idea. By making each section four pages long at the most, the writer will have to synthesize his or her thought. If it needs more, it probably means that the software is too complex to explain or use. 

スコープと読者層のほかに、それぞれのセクションのサイズを数ページに制限するというのも良いアイディアです。ほとんどの場合、考えがうまくまとまれば、それぞれのセクションは4ページ以内に納まるでしょう。もしもそれ以上に必要であれば、そのソフトウェアは複雑すぎて、説明したり使用することが困難であるということを意味します。

.. **Working software over comprehensive documentation**
 
   The Agile Manifesto. 

.. note::

   **包括的なドキュメントよりも動くソフトウェア**

   ーー アジャイル・マニフェスト [#]_

.. rubric:: 脚注
.. [#] http://www.agilemanifesto.org/iso/ja/

.. Use Templates 
   =============

テンプレートの使用
==================

.. Every page on Wikipedia is similar. There are boxes on the left side that are used to summarize dates or facts. At the beginning of the document is a table of contents with links that refer to anchors in the same text. There is always a reference section at the end. 

Wikipediaのページはすべて似たような構成をしています。右側にデータのサマリーが書かれたボックスがあります。ドキュメントの最初にはリンクの張られた目次があり、各テキストに飛ぶことができます。ページの末尾には、参考情報のセクションがあります。

.. Users get used to it. For instance, they know they can have a quick look at the table of contents, and if they do not find the info they are looking for, they will go directly to the reference section to see if they can find another website on the topic. This works for any page on Wikipedia. You learn the Wikipedia way to be more efficient. 

ユーザはその構成に見慣れています。実際、ユーザーは目次を素早く見ることで、自分の探している情報が載っているかどうかがわかるということを知っています。もしも見つからなければ、参考情報のセクションを探し、そのトピックを扱っている他のウェブサイトを探しに行きます。このやり方は、Wikipediaのどのページでも使用することができます。そして、Wikipediaにおいては、この方法を取る方が効率がよいと言うことを学ぶでしょう。

.. So using templates forces a common pattern for documents, and therefore makes people more efficient in using them. They get used to the structure and know how to read it quickly. 

そのため、テンプレートを使用して、ドキュメントを共通パターンに強制することで、読者がドキュメントを読む効率が良くなります。構造に慣れると素早く読む方法が分かります。

.. Providing a template for each kind of document also provides a quick start  for writers. 

ドキュメントの種類ごとにテンプレートを用意すると、ドキュメントを素早く書くことも可能になります。

.. In this chapter, we will see the various kinds of documents a piece of software can have, and use Paster to provide skeletons for them. But the first thing to do is to describe the markup syntax that should be used in Python documentation. 

本章では、ソフトウェア開発に必要な様々な種類のドキュメントについて見ていきます。次に、Pasterを利用したドキュメントのひな形の作成についても紹介します。しかし、まず最初に、Pythonのドキュメント作成で使用すべき、マークアップの文法の説明から行っていきます。
