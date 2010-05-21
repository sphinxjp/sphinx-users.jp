
.. ==========================
   Building the Documentation 
   ==========================

===================
ドキュメントの構築
===================

.. An easier way to guide your readers and your writers is to provide each one of them with helpers and guidelines, as we have learned in the previous section of this chapter. 

ドキュメントのヘルパーとガイドラインを提供すると、読者と作成者の両方の仕事を簡単に改善することができます。そのために、前節で学んできたことを活用していきます。

.. From a writer's point of view, this is done by having a set of reusable templates together with a guide that describes how and when to use them in a project. It is called a documentation portfolio. 

ドキュメント作成者の視点から考えると、ガイドと一緒に再利用可能なテンプレート集が提供され、それをプロジェクトの中でいつどのように使用するかという説明があると、この目標は達成できます。これをドキュメントポートフォリオと呼びます。

.. From a reader point of view, being able to browse the documentation with  no pain, and getting used to finding the info efficiently, is done by building a document landscape. 

ドキュメント読者の視点から考えると、どのようなドキュメントが提供されるのかという展望が提供されると、楽にドキュメントを読むことができるようになりますし、必要なドキュメントを効率良く探して利用できるようになります。

.. Building the Portfolio
   ======================

ポートフォリオの構築
=====================

.. There are many kinds of documents a software project can have, from low-level documents that refer directly to the code, to design papers that provide a high-level overview of the application. 

ソフトウェア開発のプロジェクトの中で作られるドキュメントには、ソースコードを直接参照するような低レベルなドキュメントから、アプリケーションの概要を伝える設計書まで、多くの種類があります。

.. For instance, Scott Ambler defines an extensive list of document types in his book Agile Modeling (see http://www.agilemodeling.com/essays/agileArchitecture.htm). He builds a portfolio from early specifications to operations documents. Even the project management documents are covered, so the whole documenting needs are built with a standardized set of templates. 

実際に、Scott Amblerは、彼の著作の「アジャイルモデリング―XPと統一プロセスを補完するプラクティス」(詳しくは http://www.agilemodeling.com/essays/agileArchitecture.htm を参照)の中で、ドキュメントの種類に関する長いリストを定義しました。彼は早期の仕様書から、操作ドキュメントまでのポートフォリオを構築しています。プロジェクト管理のドキュメントもカバーされているので、ドキュメントに関するニーズのすべてが、標準化されたテンプレートのセットで構築されています。

.. Since a complete portfolio is tightly related to the methodologies used to build the software, this chapter will only focus on a common subset that you can complete with your specific needs. Building an efficient portfolio takes a long time, as it captures your working habits. 

実際に完璧なポートフォリオを考えようとすると、ソフトウェア開発に使用している方法論の影響を強く受けるため、本章では多くの人に共通なサブセットに限定して説明します。このサブセットを元にして、特定のニーズを満たすポートフォリオを作成することもできます。時間をかければ、あなたの仕事の習慣を網羅するような、効果的なポートフォリオを構築することもできるでしょう。

.. A common set of documents in software projects can be classified in three categories: 

ソフトウェアのプロジェクトにおけるドキュメントの共通セットは、次の3つのカテゴリに分類されます:

.. * Design: All documents that provide architectural information, and low-level
     design information, such as class diagrams, or database diagrams 

* 設計: アーキテクチャの情報や、クラス図やデータベースのダイアグラムのような低レベルの設計情報を提供する、すべてのドキュメント。

.. * Usage: Documents on how to use the software; this can be in the shape of a 
     cookbook and tutorials, or a module-level help 

* 使用方法: ソフトウェアをどのように使用するのかというのが書かれたドキュメント。このドキュメントは、クックブック、チュートリアル、モジュールレベルのヘルプなどの形態で提供されます。

.. * Operations: Provide guidelines on how to deploy, upgrade, or operate  
     the software 

* 運用: デプロイやアップグレード、ソフトウェアの運用に関するガイドラインを提供する。

.. Design 
   ------

設計
----

.. The purpose of design documentation is to describe how the software works and how the code is organized. It is used by developers to understand the system but  is also a good entry point for people who are trying to understand how the application works. 

設計ドキュメントの目的は、ソフトウェアがどのように動作するのか、どのようにコードが組み立てられているのかを説明することです。開発者はシステムを理解するためにこのドキュメントを利用しますが、その他のアプリケーションがどのように動作しているのかを理解しようとしている人にとっても、良い入り口となります。

.. The different kinds of design documents a software can have are: 

ソフトウェア開発には、次のような、さまざまな種類の設計ドキュメントがあります:

.. * Architecture overview 
   * Database models 
   * Class diagrams with dependencies and hierarchy relations 
   * User interface wireframes 
   * Infrastructure description 

* アーキテクチャ概要
* データベースのモデル
* 依存関係、継承関係を含むクラス図
* ユーザインタフェースのスケッチ
* インフラストラクチャの説明

.. Mostly, these documents are composed of some diagrams and a minimum amount of text. The conventions used for the diagrams are very specific to the team and the project, and this is perfectly fine as long as it is consistent. 

ほとんどのこれらのドキュメントは、いくつかのダイアグラムと、最小量のテキストで構成されます。ダイアグラムの描き方はチームやプロジェクトごとに定義されます。すばらしいドキュメントにするために、スタイルは一貫させましょう。

.. UML provides thirteen diagrams that cover most aspects in a 
   software design. The class diagram is probably the most used one, 
   but it is possible to describe every aspect of software with it. See 
   http://en.wikipedia.org/wiki/Unified_Modeling_Language#Diagrams. 

..
    wikipedia のインデックスが変更されたようです

.. note::

   UMLは、ソフトウェア設計のほとんどの切り口をサポートする13種類の図を提供しています。
   おそらく、この中で一番使用されているのはクラス図ですが、UMLはソフトウェアのあらゆる
   面の説明に使用することができます。
   http://en.wikipedia.org/wiki/Unified_Modeling_Language#Diagrams_overview
   を参照してください。 [#]_

.. rubric:: 脚注
.. [#] 日本語のWikipediaにもUMLに関するページがあります。http://ja.wikipedia.org/wiki/統一モデリング言語 を参照してください。

.. Following a specific modeling language such as UML is not often fully done, and teams just make up their own way throughout their common experience. They pick up good practice from UML or other modeling languages, and create their own recipes. 

UMLのような特定の言語を、上から下まで完全に使って記述していくということは滅多にありません。多くのチームは、それぞれの経験から、独自の方法を作り上げています。そのようなチームでは、UMLや他のモデリング言語の中から、良いと思うものをピックアップした、独自のレシピを持っています。

.. For instance, for architecture overview diagrams, some designers just draw boxes and arrows on a whiteboard without following any particular design rules and take a picture of it. Others work with simple drawing programs such as Dia (http://www.gnome.org/projects/dia) or Microsoft Visio (not open source, so not free), since it is enough to understand the design. For example, all architecture diagrams presented in the Chapter 6 of this book where made with OmniGraffle. 

アーキテクチャの概要を表す図を書く場合、単に四角い箱と矢印をホワイトボード上に描いて済ませてしまう設計者も数多くいます。決まったルールに従わないこともありますし、記録も取らないで消してしまうこともあります。また、Dia（http:////www.gnome.org/projects/dia//tt）や、Microsoft Visio（オープンソースでもフリーでもありません）などのシンプルなドロープログラムを使い、設計するのに必要な程度の最小の図を描く人もいます。本書の6章では、すべてのアーキテクチャの図を、OmniGraffle(http://www.omnigroup.com/products/omnigraffle/)を使って作成しています。

.. Database model diagrams depend on the kind of database you are using. There are complete data modeling software applications that provide drawing tools to automatically generate tables and their relations. But this is overkill in Python most of the time. If you are using an ORM such as SQLAlchemy (for instance), simple boxes with lists of fields, together with table relations as shown in Chapter 6 are enough to describe your mappings before you start to write them. 

データベースのダイアグラムは使用するデータベースの種類に依存します。データモデリングソフトの中には、作図機能に加えて、テーブルと関連を自動的に生成してくれるものもあります。しかし、Pythonでは、こういったツールは大げさでしょう。SQLAlchemyなどのORマッパーを使用している場合、実装前にデータベースのモデルを説明するためには、6章でお見せしたように、フィールドリストが書かれたシンプルな箱をならべ、テーブル間の関連を付け足すだけで十分です。

.. Class diagrams are often simplified UML class diagrams: There is no need in Python to specify the protected members of a class, for instance. So the tools used for an architectural overview diagram fit this need too. 

クラス図には、UMLのクラス図をシンプルにしたものを使うことが多いでしょう。たとえば、Pythonではクラスにprotectedメンバを定義することはありません。そのため、アーキテクチャの概要を描くようなツールが定義されていれば、それで十分なことがほとんどです。

.. User interface diagrams depend on whether you are writing a web or a desktop application. Web applications often describe the center of the screen, since the header, footer, left, and right panels are common. Many web developers just handwrite those screens and capture them with a camera or a scanner. Others create prototypes in HTML and make screen snapshots. For desktop applications, snapshots on prototype screens, or annotated mock-ups made with tools such as Gimp or Photoshop are the most common way. 

ユーザーインタフェースの図に関しては、作成しようとしているアプリケーションが、デスクトップアプリケーションか、それともWebアプリケーションかによって異なります。Webアプリケーションの場合には、ヘッダやフッタ、左右のパネルは全画面で共通なことが多いため、スクリーンの真ん中の部分だけを説明することが多いでしょう。人によっては、HTMLでプロトタイプを作ったり、スクリーンショットを作成します。デスクトップアプリケーションの場合には、プロトタイプの画面のスクリーンショットを撮ったり、GimpやPhotoshopといった画像をソフトを使用して、注釈付きのモックアップを作成するのが一般的です。

.. Infrastructure overview diagrams are like architecture diagrams, but they focus on how the software interacts with third-party elements, such as mail servers, databases, or any kind of data streams. 

インフラストラクチャの概要を描いた図は、アーキテクチャの図に似ていますが、メールサーバやデータベース、その他のデータストリームなどの外部のシステムと、どのようにインタラクションを取っているのかという点に焦点を合わせて描いていきます。

.. Common Template 
   ;;;;;;;;;;;;;;;

共通テンプレート
;;;;;;;;;;;;;;;;

.. The important point when creating such documents is to make sure the target readership is perfectly known, and the content scope is limited. So a generic template for design documents can provide a light structure with a little advice for the writer. Such a structure can include: 

このようなドキュメントを作成するときの重要なポイントは、ドキュメントのターゲットとなる読者を完全に把握し、内容のスコープを絞ることです。ドキュメント作成者への簡単なアドバイスも付いた、シンプルな構造を持つ、汎用テンプレートとして提供することで、これらを実現することができます。この構造には、次のものが含まれます。

.. * Title 
   * Author 
   * Tags (keywords) 
   * Description (abstract) 
   * Target (Who should read this?) 
   * Content (with diagrams) 
   * References to other documents 

* タイトル
* 作成者
* タグ(キーワード)
* 説明(概要)
* 対象(誰がこれを読むべきか？)
* 内容(図入り)
* 他のドキュメントへの参照

.. The content should be three or four screens (a 1024x768 average screen) at the most, to be sure to limit the scope. If it gets bigger, it should be split into several documents or summarized. 

内容は、平均的な画面サイズを1024x768と想定した場合に、最大でも3〜4画面に収まる量にすべきです。もしもこれよりも多くなってしまったら、いくつかに分割するか、サマリーとしてまとめましょう。

.. The template also provides the author's name and a list of tags to manage its evolutions and ease its classification. This will be covered later in the chapter. 

テンプレートには、作成者の名前と、ドキュメントの評価を管理したり、分類を簡単にするためのタグも含まれています。これについては本章の後半で説明します。

.. Paster is the right tool to use to provide templates for documentation. pbp.skels implements the design template described, and can be used exactly like code generation. A target folder is provided and a few questions are answered: 

ドキュメントのテンプレートを提供するために使用するツールはPasterです。pdp.skelsというファイルは、これまで説明してきた設計のテンプレートを実装しています。対象となるフォルダを指定し、いくつかの質問に答えるだけで、コードジェネレータと同じように使用できます。

.. code-block:: bash

   $ paster create -t pbp_design_doc design 
   Selected and implied templates: 
     pbp.skels#pbp_design_doc  A Design document 
   Variables: 
     egg:      design 
     package:  design 
     project:  design 
   Enter title ['Title']: Database specifications for atomisator.db 
   Enter short_name ['recipe']: mappers 
   Enter author (Author name) ['John Doe']: Tarek 
   Enter keywords ['tag1 tag2']: database mapping sql 
   Creating template pbp_design_doc 
   Creating directory ./design 
     Copying +short_name+.txt_tmpl to ./design/mappers.txt 

.. The result can then be completed: 

実行が完了すると、次のようなファイルが生成されます。

.. code-block:: rst

   ========================================= 
   Database specifications for atomisator.db 
   ========================================= 
   
   :Author: Tarek 
   :Tags: database mapping sql 
   :abstract: 
    Write here a small abstract about your design document. 

   .. contents :: 

   Who should read this ? 
   :::::::::::::::::::::: 

   Explain here who is the target readership. 

   Content 
   ::::::: 

   Write your document here. Do not hesitate to split it in several 
   sections. 

   References 
   :::::::::: 

   Put here references, and links to other documents. 

.. note::
   訳注: pbp_design_doc テンプレートからは上記のように英語のドキュメントが生成されます。しかし、reSTドキュメントを日本語(utf-8)で書いても問題ありません。上記のドキュメントを日本語で書き直した場合は次のようになります。

   .. code-block:: rst

      ================================
      atomisator.db のデータベース仕様
      ================================

      :著者: Tarek
      :タグ: database mapping sql
      :概要:
       ここにこのドキュメントの概要を小さくまとめて書いて下さい。

      .. contents::

      このドキュメントの対象者
      ::::::::::::::::::::::::

      ここで、このドキュメントが想定する読者を説明して下さい。

      本文
      ::::

      ここにドキュメントを書いて下さい。また、長い内容はためらわずに
      複数の節に分けて書くようにして下さい。

      参考文献
      ::::::::

      ここに参考文献のリンク先やドキュメント名を記載して下さい。

.. Usage
   -----

使用方法
--------

.. Usage documentation describes how a particular part of the software works. This documentation can describe low-level parts such as how a function works, but also high-level parts such command-line arguments for calling the program. This is the most important part of documentation in framework applications, since the target readership is mainly the developers that are going to reuse the code. 

使用方法のドキュメントでは、ソフトウェアの一部分がどのように動作するのかを説明します。このドキュメントは、特定の機能がどのように動作するのかという低レベルな説明から、プログラム呼び出し時に使用するコマンドライン引数のような高レベルな説明まで含まれます。想定読者がコードを再利用しようとしている開発者なので、アプリケーションのフレームワークのドキュメントは、あらゆるドキュメントの中でもっとも重要なドキュメントになります。

.. The three main kinds of documents are: 

このドキュメントは主に３種類あります:

.. * Recipe: A short document that explains how to do something. This kind of 
     document targets one readership and focuses on one specific topic. 

* レシピ: 何かを行うための方法を説明した、短いドキュメント。この種類のドキュメントは、特定の読者に絞ったものか、あるトピックに限定して焦点を当てたものになります。

.. * Tutorial: A step-by-step document that explains how to use a feature of 
     the software. This document can refer to recipes, and each instance 
     is intended to one readership. 

* チュートリアル: ソフトウェアの機能を使用するための方法を、一歩一歩説明したドキュメント。このドキュメントはレシピを参照します。また、それぞれの項目は、特定の読者のために書かれます。

.. * Module helper: A low-level document that explains what a module contains. 
     This document could be shown (for instance) when you call the help 
     built-in over a module. 

* モジュールヘルパー: モジュールに含まれる要素を説明する、低レベルなドキュメント。このドキュメントはモジュール越しに組み込みのヘルプを呼び出す場合に読まれます。

.. Recipe 
   ;;;;;;

レシピ
;;;;;;

.. A recipe answers a very specific problem and provides a solution to resolve it. 

レシピは特定の問題に対する解答や解決策を提供したりするドキュメントです。

.. For example, ActiveState provides a Python Cookbook online (a cookbook is a collection of recipes), where developers can describe how to do something in Python (see http://aspn.activestate.com/ASPN/Python/Cookbook). These recipes must be short and are structured like this: 

例えば、ActiveStateのウェブサイトでは、Pythonクックブックオンラインが提供されています。

クックブックというのはレシピを集めたもので、Pythonで何か特定のことを行う方法について、開発者が自分で記述することができます(http://aspn.activestate.com/ASPN/PythonCookbook を参照)。これらのレシピは簡潔な、以下のような構造を持ちます。

.. * Title 
   * Submitter 
   * Last updated 
   * Version 
   * Category 
   * Description 
   * Source (the source code) 
   * Discussion (the text explaining the code) 
   * Comments (from the web) 

* タイトル
* 送信者
* 最終更新日
* バージョン
* カテゴリ
* 説明
* ソースコード
* 議論(コードを説明するためのテキスト)
* コメント(Webから)

.. Often, they are one-screen long and do not go into great details. This structure perfectly fits a software's needs and can be adapted in a generic structure, where the target readership is added and the category replaced by tags: 

ほとんどの場合、これらは１画面に収まる長さで、詳しい詳細説明が書かれません。この構造はソフトウェアに対する要望を記述する場合にもそのまま使用できますし、"対象読者"を追加して、"カテゴリ"を"タグ"に置き換えると、汎用的な構造として適用することができます。

.. * Title (short sentence) 
   * Author 
   * Tags (keywords) 
   * Who should read this? 
   * Prerequisites (other documents to read, for example) 
   * Problem (a short description) 
   * Solution (the main text, one or two screens) 
   * References (links to other documents) 

* タイトル(短い説明)
* 著者
* タグ(キーワード)
* これを読むべき人は誰か？
* 事前条件(例えば、先に読んでおくべきドキュメントなど)
* 問題(短い説明)
* 解決策(メインのテキスト。1?2画面に収まる量)
* 参照(他のドキュメントへのリンク)

.. The date and version are not useful here, since we will see later that the documentation is managed like source code in the project. 

更新日とバージョンは入れてもそれほど便利ではありません。プロジェクト内でソースコードのようにドキュメントも管理されていれば、後で見ることができるからです。

.. Like the design template, pbp.skels provide a pbp_recipe_doc template that can be used to generate this structure: 

設計のテンプレートと同様に、pdp.skelsファイルを使用すると、このような構造をした、pdp_recipe_docテンプレートが使えるようになります。

.. code-block:: bash

   $ paster create -t pbp_recipe_doc recipes 
   Selected and implied templates: 
     pbp.skels#pbp_recipe_doc  A recipe 
   Variables: 
     egg:      recipes 
     package:  recipes 
     project:  recipes 
   Enter title (use a short question): How to use atomisator.db 
   Enter short_name ['recipe'] : atomisator-db        
   Enter author (Author name) ['John Doe']: Tarek 
   Enter keywords ['tag1 tag2']: atomisator db 
   Creating template pbp_recipe_doc 
   Creating directory ./recipes 
     Copying +short_name+.txt_tmpl to ./recipes/atomisator-db.txt 

.. The result can then be completed by the writer: 

実行が完了したら、ドキュメント作成者が内容を埋めていきます。

.. code-block:: rest

   ======================== 
   How to use atomisator.db 
   ======================== 

   :Author: Tarek 
   :Tags: atomisator db 

   .. contents :: 
   
   Who should read this ? 
   :::::::::::::::::::::: 

   Explain here who is the target readership. 

   Prerequisites 
   ::::::::::::: 
   
   Put here the prerequisites for people to follow this recipe. 

   Problem 
   ::::::: 

   Explain here the problem resolved in a few sentences. 

   Solution 
   :::::::: 

   Put here the solution. 

   References 
   :::::::::: 

   Put here references, and links to other recipes. 

.. Tutorial 
   ;;;;;;;;

チュートリアル
;;;;;;;;;;;;;;

.. A tutorial differs from a recipe in its purpose. It is not intended to resolve an isolated problem, but rather describes how to use a feature of the application step by step. This can be longer than a recipe and can concern many parts of the application. For example, Django provides a list of tutorials on its website. Writing your first Django App, part 1 (see http://www.djangoproject.com/documentation/tutorial01) explains in ten screens how to build an application with Django. 

チュートリアルはレシピと似ていますが、目的が異なります。チュートリアルは、個別の問題を解決するのではなく、アプリケーションの機能の使用方法をステップ・バイ・ステップで説明したものです。このドキュメントは、レシピよりもアプリケーションの多くの部分に触れることになるため、文章も長くなるでしょう。たとえば、DjangoはチュートリアルをWebサイト上で提供しています。初めてDjangoのアプリケーションを作成する方法について書かれたページ(http://www.djangoproject.com/documentation/tutorial01 を参照) [#]_ は、10ページ分の長さがあります。

.. rubric:: 脚注
.. [#] 日本語訳は http://djangoproject.jp/doc/ja/1.0/intro/tutorial01.html を参照してください。

.. A structure for such a document can be: 

ドキュメントの構造は次のようになります。

.. * Title (short sentence) 
   * Author 
   * Tags (words) 
   * Description (abstract) 
   * Who should read this? 
   * Prerequisites (other documents to read, for example) 
   * Tutorial (the main text) 
   * References (links to other documents) 

* タイトル(短い文章)
* 著者
* タグ(言葉)
* 説明(概要)
* これを読むべき人は誰か？
* 事前条件(例えば、先に読んでおくべきドキュメントなど)
* チュートリアル(メインのテキスト)
* 参照(他のドキュメントへのリンク)

.. The pbp_tutorial_doc template is provided in pbp.skels as well with this structure, which is similar to the design template. 

ここで説明したような構造を持ったpdp_tutorial_docテンプレートも、pdp.skelsで提供されています。これも、設計のテンプレートと同じように使用することができます。

.. Module Helper 
   ;;;;;;;;;;;;;

モジュールヘルパー
;;;;;;;;;;;;;;;;;;

.. The last template that can be added in our collection is the module helper template. A module helper refers to a single module and provides a description of its contents, together with usage examples. 

私たちのコレクションに最後に追加するテンプレートは、モジュールヘルパーのテンプレートです。モジュールヘルパーは、一つのモジュールについて書かれていて、そのモジュールに含まれる要素の説明と、使用方法のサンプルを提供します。

.. Some tools can automatically build such documents by extracting the docstrings and computing module help using pydoc, like Epydoc (see http://epydoc.sourceforge.net). So it is possible to generate an extensive documentation based on API introspection. This kind of documentation is often provided in Python frameworks. For instance Plone provides an http://api.plone.org server that keeps an up-to-date collection of module helpers. 

docstringを収集してモジュールのヘルプを作成する、pydocやEpydoc(http://epydoc.sourceforge.net を参照)といったツールを使うと、このようなドキュメントを自動的に構築することができます。APIの自動探索をベースにして、網羅的なドキュメントを作成することができます。この種類のドキュメントを提供しているPythonのフレームワークはかなりの数に上ります。実際にPloneがhttp://api.plone.orgで提供している情報は、モジュールヘルパーを収集することで、最新のドキュメントに維持されています。

.. The main problems with this approach are

このアプローチの主な問題は次の二点です。

.. * There is no smart selection performed over the modules that are really 
     interesting to document. 
   * The code can be obfuscated by the documentation. 

* ドキュメント全体に対して処理するときに、本当にドキュメントにしたい部分をスマートに選択する機能がない
* ドキュメントが大量に含まれるため、コードが分かりにくくなる可能性がある

.. Furthermore, a module documentation provides examples that sometimes refer to several parts of the module, and are hard to split between the functions' and classes' docstrings. The module docstring could be used for that purpose by writing a text at the top of the module. But this ends in having a hybrid file composed of a block of text, then a block of code. This is rather obfuscating when the code represents less than 50% of the total length. If you are the author, this is perfectly fine. But when people try to read the code (not the documentation), they will have to jump the docstrings part. 

その上、モジュールの構成部品のいくつかの部分にまたがっていて、関数やクラスのdocstringに分解しにくいようなサンプルはモジュールのドキュメントとして提供されます。モジュールの先頭にテキストを書くと、そのモジュールのdocstringになるので、このような目的を達成することができます。しかし、これを行うとソースファイルがテキストのブロックとコードのブロックに分かれた構成になってしまいます。コードの行数が全体の50%を切ると、さらにわかりにくくなります。あなたがモジュールの作者であるとすれば、まったく問題はありません。しかし、ドキュメントではなくコードを読もうと思っている人は、docstring部分を飛ばさないといけなくなります。


..
    (このtodoは、対応しなくても大丈夫と判断しコメントアウト:清水川)
    author の訳が モジュールの作者 になってるけど、本当にそういう意味？ 
    文脈的に、コードに興味がない人という意味でauthorと言っている気がする。
    morimoto:
    モジュールの作者が充実したドキュメントを提供するのは良いことだけど、
    開発者によってはコードだけ読もうとする人もいますよって意味だと思う
    悪いことじゃないけど、もっと簡潔な文章を書こうよという感じですかね

.. Another approach is to separate the text in its own file. A manual selection can then be operated to decide which Python module will have its module helper file. The documents can then be separated from the code base and allowed to live their own life, as we will see in the next part. This is how Python is documented. 

他の方法としては、テキストを切り離すことです。手動で選択すると、どのPythonモジュールがモジュールヘルパーファイルを持っているかというのを決定することができます。ドキュメントはコードベースと切り離されるため、後で説明するように、ドキュメントの寿命を延ばすことができます。これが、Pythonのドキュメントの書き方になります。

.. Many developers will disagree on the fact that doc and code separation is better than docstrings. This approach means that the documentation process is fully integrated in the development cycle; otherwise it will quickly become obsolete. The docstrings approach solves this problem by providing proximity between the code and its usage example, but doesn't bring it to a higher level: a document that can be used as part of a plain documentation. 

ドキュメントとコードを分離することがdocstringよりも良いかどうかという点に関しては、多くの開発者の間で意見が分かれるところです。このアプローチを取るには、ドキュメント作成のプロセスを、完全に開発サイクルに統合しなければなりません。そうしなければ、ドキュメントはすぐに古新聞になってしまいます。docstringは、コードと使用例を近づけることによってこの問題に対処していますが、よりわかりやすいドキュメントの一部として使用できるテキストを提供するという、高いレベルの解決策を得ることはできません。

.. The template for Module Helper is really simple, as it contains just a little metadata before the content is written. The target is not defined since it is the developers who wish to use the module: 

モジュールヘルパーのテンプレートは極めてシンプルで、内容に加えて、少量のメタデータが含まれる程度になっています。読者はそのモジュールを使用する開発者に限定されるため、だれが読むべきかという定義はここには含まれません。

.. * Title (module name) 
   * Author 
   * Tags (words) 
   * Content 

* タイトル(モジュール名)
* 著者
* タグ(単語)
* 内容

.. note::

   次章では、doctestとモジュールヘルパーを利用したテスト駆動開発について言及します。

.. The next chapter will cover Test-Driven Development using doctests and 
   module helpers. 

.. Operations 
   ----------

運用
----

.. Operation documents are used to describe how the software can be operated. For instance: 

運用に関するドキュメントは、ソフトウェアをどのように操作・運用すればいいのかを説明するのに使用されます。たとえば、

.. * Installation and deployment documents 
   * Administration documents 
   * "Frequently Asked Questions" documents that help the users when a  
      failure occurs 
   * Documents that explain how people can ask for help or provide feedback 

* インストールとデプロイに関するドキュメント
* 管理ドキュメント
* ユーザが問題に直面したときに手助けを行うための「良くある質問と答え(FAQ)」
* ヘルプへの問い合わせ方法や、フィードバックを提供する方法を説明したドキュメント

.. These documents are very specific, but they can probably use the tutorial template defined in the earlier section. 

これらのドキュメントはそれぞれが特異なものですが、テンプレートとしては前の部分で紹介した、チュートリアルのテンプレートを使用することができます。



