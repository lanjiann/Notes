<TeXmacs|1.99.7>

<style|<tuple|generic|old-spacing>>

<\body>
  <doc-data|<doc-title|Note to The Book<next-line> Semantics Engineering with
  PLT Redex<next-line><small|[by Matthias Felleisen, Robert Bruce Findler,
  Matthew Flatt]>>|<doc-author|<author-data|<author-name|Jian Lan>>>>

  <section*|Preface - ix>

  <section*|I Reduction Semantics - 1>

  <section|Semantics via Syntax - 5>

  <subsection|Defining Sets>

  <\itemize-dot>
    <item>A BNF grammar is used for several different purposes:

    <\itemize-minus>
      <item>A set of strings

      <item>A set of \Ptrees\Q, often called <strong|abstract sytax> (trees).
    </itemize-minus>

    <item>In this book, we always adopt the <strong|abstract sytax> (trees)
    perspective.

    <item>For <underline|this chapter and the next>, we use the following BNF
    grammar as a running example:

    <\eqnarray*>
      <tformat|<table|<row|<cell|B>|<cell|=>|<cell|t>>|<row|<cell|>|<cell|\|>|<cell|f>>|<row|<cell|>|<cell|\|>|<cell|<around*|(|B\<bullet\>B|)>>>>>
    </eqnarray*>

    This is a short-hand for following constraints on the set <math|B> of
    <em|abstract syntax trees>:

    <\eqnarray*>
      <tformat|<table|<row|<cell|t>|<cell|\<in\>>|<cell|B>>|<row|<cell|f>|<cell|\<in\>>|<cell|B>>|<row|<cell|a\<in\>B
      and b\<in\>B>|<cell|\<Rightarrow\>>|<cell|<around*|(|a\<bullet\>b|)>\<in\>B>>>>
    </eqnarray*>

    <item>Sometimes we use <math|B> to represent the set. Sometimes we use
    <math|B> to represent a value in this set. The meanings are always clear
    if everytime you take into account the context.

    <item>Sometimes we use <math|B> with subsrcipts to prepresent the values
    in set <math|B>. Use this kind of synbols we can re-write the rules above
    as:

    <\equation*>
      <with|font-family|tt|<stack|<tformat|<twith|table-hmode|max>|<cwith|1|1|4|4|cell-width|2cm>|<cwith|1|1|4|4|cell-hmode|exact>|<cwith|1|-1|1|1|cell-halign|r>|<table|<row|<cell|t>|<cell|\<in\>>|<cell|B>|<cell|>|<cell|<around*|[|a|]>>>|<row|<cell|f>|<cell|\<in\>>|<cell|B>|<cell|>|<cell|<around*|[|b|]>>>|<row|<cell|<around*|(|B<rsub|1>\<bullet\>B<rsub|2>|)>>|<cell|\<in\>>|<cell|B>|<cell|>|<cell|<around*|[|c|]>>>>>>>
    </equation*>

    <item>We can prove that something belongs to <math|B> by showing that it
    satisfies the constraints.

    For example, <math|<around*|(|t\<bullet\><around*|(|f\<bullet\>t|)>|)>>
    is in <math|B>:

    <\with|font-family|tt>
      <\enumerate-numeric>
        <item><math|t\<in\>B> by <math|<around*|[|a|]>>

        <item><math|t\<in\>B> by <math|<around*|[|a|]>>

        <item><math|t\<in\>B> by <math|<around*|[|a|]>>

        <item><math|<around*|(|f\<bullet\>t|)>\<in\>B> by 2, 3, and
        <math|<around*|[|c|]>>

        <item><math|<around*|(|t\<bullet\><around*|(|f\<bullet\>t|)>|)>\<in\>B>
        by 1, 4, and <math|<around*|[|c|]>>
      </enumerate-numeric>
    </with>

    Usually, such arguments are arranged in the shape of a so-called
    <em|proof tree>:

    <\equation*>
      <frac|t\<in\>B <around*|[|a|]><application-space|1em><frac|f\<in\>B
      <around*|[|b|]> <application-space|1em>t\<in\>B
      <around*|[|a|]>|<around*|(|f\<bullet\>t|)>\<in\>B>
      <around*|[|c|]>|<around*|(|t\<bullet\><around*|(|f\<bullet\>t|)>|)>\<in\>B>
      <around*|[|c|]>
    </equation*>

    We often don't write down the justify step, because the steps are
    typically obvious:

    <\equation*>
      <frac|t\<in\>B<application-space|1em><frac|f\<in\>B<application-space|1em>t\<in\>B|<around*|(|f\<bullet\>t|)>\<in\>B>|<around*|(|t\<bullet\><around*|(|f\<bullet\>t|)>|)>\<in\>B>
    </equation*>

    <item><strong|Exercise 1.1.> Which of (1) t, (2) \<bullet\>, (3)((f
    \<bullet\> t) \<bullet\> (f \<bullet\> f)), (4) ((f) \<bullet\> (t)), or
    (S) "hello" are in B? For each member of B, provide a proof tree.

    <\answer>
      \;

      <\enumerate-numeric>
        <item><math|t> is <math|B>.

        <\eqnarray*>
          <tformat|<table|<row|<cell|t>|<cell|\<in\>>|<cell|B>>>>
        </eqnarray*>

        <item>\<bullet\> is NOT <math|B>

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<bullet\>>|<cell|\<nin\>>|<cell|B>>>>
        </eqnarray*>

        <item><math|<around*|(|<around*|(|f\<bullet\>t|)>\<bullet\><around*|(|f\<bullet\>f|)>|)>>
        is <math|B>

        <\equation*>
          <frac|<frac|f\<in\>B<application-space|1em>t\<in\>B|<around*|(|f\<bullet\>f|)>\<in\>B><application-space|1em><frac|f\<in\>B<application-space|1em>t\<in\>B|<around*|(|f\<bullet\>t|)>\<in\>B>|<around*|(|<around*|(|f\<bullet\>f|)>\<bullet\><around*|(|f\<bullet\>t|)>|)>\<in\>B>
        </equation*>

        <item><math|<around*|(|<around*|(|f|)>\<bullet\><around*|(|t|)>|)>>
        is <math|B>

        <\equation*>
          <frac|<frac|f\<in\>B|<around*|(|f|)>\<in\>B><application-space|1em><frac|t\<in\>B|<around*|(|t|)>\<in\>B>|<around*|(|<around*|(|f|)>\<bullet\><around*|(|t|)>|)>\<in\>B>
        </equation*>

        <item>\Qhello\Q is NOT <math|B>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<text|\Phello\Q>>|<cell|\<nin\>>|<cell|B>>>>
        </eqnarray*>
      </enumerate-numeric>
    </answer>
  </itemize-dot>

  <subsection|Relations.>

  <\itemize-dot>
    <item>

    <\definition*>
      <strong|Relation>

      A set whose elements consist of ordered pairs.
    </definition*>

    <item>Example: self-match relation

    <\eqnarray*>
      <tformat|<table|<row|<cell|a\<in\>B>|<cell|\<Rightarrow\>>|<cell|<around*|\<langle\>|a,a|\<rangle\>>\<in\>\<b-up-R\>>>>>
    </eqnarray*>

    <item>For <underline|binary relations> such as the <math|\<b-up-R\>> in
    the last example, we usually write <math|a \<b-up-R\> a>:

    <\eqnarray*>
      <tformat|<table|<row|<cell|a\<in\>B>|<cell|\<Rightarrow\>>|<cell|a
      \<b-up-R\> a>>>>
    </eqnarray*>

    or even simply

    <\equation*>
      B<rsub|1> \<b-up-R\> B<rsub|1>
    </equation*>

    <item>As it turns out, the relation <math|\<b-up-R\>> is <em|reflexive>,
    <em|symmetric>, and <em|transitive>; that is, it satisfies the following
    three constraints:

    <\description>
      <item*|reflexive>iff <math|a \<b-up-R\> a> for any <math|a>

      <item*|symmetric>iff <math|a \<b-up-R\> b\<Rightarrow\>b \<b-up-R\> a>

      <item*|transitive>iff <math|a \<b-up-R\> b<text| and >b \<b-up-R\>
      c\<Rightarrow\>a \<b-up-R\> c>
    </description>

    <item>

    <\definition*>
      <strong|Equivalence>

      a relation that is <underline|reflexive>, <underline|symmetric>, and
      <underline|transitive>.
    </definition*>

    <item>Let's define a <em|relation> <math|\<b-up-r\>> that is NEITHER
    <em|reflexive>, <em|symmetric>, NOR <em|transitive>:

    <\equation*>
      <stack|<tformat|<cwith|1|1|4|4|cell-width|2cm>|<cwith|1|1|4|4|cell-hmode|exact>|<table|<row|<cell|<around*|(|f\<bullet\>B<rsub|1>|)>>|<cell|\<b-up-r\>>|<cell|B<rsub|1>>|<cell|>|<cell|<around*|[|a|]>>>|<row|<cell|<around*|(|t\<bullet\>B<rsub|1>|)>>|<cell|\<b-up-r\>>|<cell|t>|<cell|>|<cell|<around*|[|b|]>>>>>>
    </equation*>

    In the context of a <em|reduction semantics>, such relations are known as
    <strong|notions of reduction>.

    <item>
  </itemize-dot>

  <subsection|Semantics as an Equivalence Relation.>

  <subsection|Semantics via Reduction.>

  <subsection|Reduction in Context.>

  <subsection|Evaluation Functions.>

  <subsection|Notation Summary.>

  \;

  \;

  \;

  \;

  \;

  <section|Analyzing Syntactic Semantics - 13>

  <subsection|From Questions to Mathematical Claims.>

  <subsection|Answers as Theorems.>

  \;

  <section|The <math|\<lambda\>>-Calculus - 23>

  <subsection|Functions and the \<lambda\>-Calculus.>

  <subsection|\<lambda\>-Calculus: Syntax and Reductions.>

  <subsection|Encoding Booleans.>

  <subsection|Encoding Pairs.>

  <subsection|Encoding Numbers.>

  <subsection|Encodings and Errors.>

  <subsection|Recursion.>

  <subsection|Consistency and Normal Forms.>

  <subsection|Normal Forms and Reduction Strategies.>

  <subsection|History.>

  \;

  <section|ISWIN - 45>

  <subsection|ISWIM Expressions.>

  <subsection|Calculating with ISWIM.>

  <subsection|Alpha, Eta, and Quotients.>

  <subsection|The Y Combinator.>

  <subsection|Evaluation.>

  <subsection|Consistency.>

  <subsection|Observational Equivalence.>

  <subsection|History.>

  \;

  <section|An Abstract Syntax Machine - 65>

  <subsection|Standard Reductions. - 65>

  <subsection|The Standard Reduction Theorem. - 69>

  <subsection|Reasoning about Observational Equivalence. - 80>

  <subsection|Uniform Evaluation. - 84>

  <subsection|History. - 87>

  \;

  <section|Abstract Register Machines - 89>

  <subsection|The CC Machine - 89>

  <subsection|The SCC Machine - 94>

  <subsection|The CK Machine - 99>

  <subsection|The CEK Machine - 100>

  <subsection|History - 105>

  \;

  <section|Tail Calls and More Space Savings - 107>

  <subsection|SECD Machine - 107>

  <subsection|Space for Evaluation Contexts - 109>

  <subsection|Space for Environments - 112>

  <subsection|History - 114>

  \;

  <section|Control: Errors, Exceptions, and Continuations - 115>

  <subsection|Error ISWIM - 116>

  <subsection|Relating ISWIM and Error ISWIN - 124>

  <subsection|Handler ISWIN - 129>

  <subsection|Continuation ISWIM and Total Control - 139>

  <subsection|History - 144>

  \;

  <section|State: Imperative Assignment - 145>

  <subsection|Programming in State ISWIM - 146>

  <subsection|An Evaluator for State ISWIM - 148>

  <subsection|The State ISWIM Calculus - 154>

  <subsection|The CESK Machine - 165>

  <subsection|Space and Garbage Collection - 167>

  <subsection|History - 173>

  \;

  <section|Simply Typed ISWIN - 175>

  <subsection|Simply Typed ISWIM - 176>

  <subsection|Typed Programs Don't Go Wrong - 186>

  <subsection|Types and Recursion - 190>

  <subsection|Types Programs Go to Specific Stuck States - 190>

  <subsection|History - 198>

  \;

  <section*|II PLT Redex - 201>

  <section|The Basics - 205>

  <subsection|PLT Redex and PLT Scheme. - 205>

  <subsection|Specifying Abstract Syntax. - 207>

  <subsection|Specifying Reduction Relations. - 210>

  <subsection|Tracing. - 212>

  <subsection|Variation on a Theme. - 213>

  \;

  <section|Variables and Meta-functions - 217>

  <subsection|More on Redex Grammars.>

  <subsection|Meta-functions.>

  <subsection|Reductions via <with|font-family|tt|with> Clauses.>

  \;

  <section|Layered Development - 227>

  <subsection|Extending Languages. - 227>

  <subsection|Extending Reduction Relations. - 230>

  <subsection|Side Conditions. - 234>

  \;

  <section|Testing - 237>

  <subsection|Test Cases, Test Suites. - 237>

  <subsection|Abstracting over Test Cases. - 238>

  <subsection|Testing Properties. - 240>

  <subsection|The CK Machine. - 241>

  \;

  <section|Debugging - 245>

  <subsection|Visual Debugging, Take 1. - 245>

  <subsection|Type Checking, Take 1. - 248>

  <subsection|Visual Debugging, Take 2. - 253>

  <subsection|Type Checking, Take 2. - 256>

  \;

  <section|Case Study 1: Order of Evaluation - 259>

  <subsection|Adding Mutation. - 259>

  <subsection|Evaluation Everywhere. - 261>

  <subsection|R<math|<rsup|6>>RS: A First Attempt. - 263>

  <subsection|R<math|<rsup|6>>RS: A Second Attempt. - 266>

  <subsection|R<math|<rsup|6>>RS: Finally. - 268>

  \;

  <section|Case Study 2: Continuations as Values - 271>

  <subsection|Continuations as Functions. - 271>

  <subsection|Continuations as Evaluation Contexts. - 273>

  \;

  <section|Typesetting - 277>

  <subsection|The Defaults.>

  <subsection|Simple Specializations.>

  <subsection|The <with|font-family|tt|lw> Structure.>

  <subsection|Rewriting Calls to Meta-functions.>

  <subsection|Rewriting PLT Scheme Code.>

  \;

  <section*|A Appendix: A Tour of DrScheme - 297>

  <subsection*|A.1 Getting Started.>

  <subsection*|A.2 Editing: Tips & Tricks.>

  <subsection*|A.3 Running Programs: Tips & Tricks.>

  <subsection*|A.4 Modules, Libraries, and Documentation.>

  \;

  <section*|III Applications - 307>

  <section|Modular ACL2 - Carl Eastlund, Northeastern University - 311>

  <section|Modeling Scheme Macros - Martin Gasbichler, Ziihlke Engineering AG
  - 327>

  <section|A Model of Java/Scheme Interoperability - KathrynE. Gray,
  University of Utah>

  <section|Implementing Hidden Type Variables in Fortress - Joe Hallett,
  Boston University, Eric Allen, Sun Microsystems, Inc., Sukyoung Ryu, Sun
  Microsystems, Inc. - 381>

  <section|Type Checking and Inference via Reductions - George Kuan,
  University of Chicago - 403>

  <section|Topsl: DSEL as Multi-language System - Jacob Matthews, University
  of Chicago - 429>

  <section|Prototyping Nested Schedulers - Mike Rainey, University of Chicago
  - 459>

  <section*|Bibliography - 485>

  <section*|Index - 495>

  \ 

  \ 

  \;

  \;

  \;

  \;

  \;
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-10|<tuple|1.7|?>>
    <associate|auto-100|<tuple|16.5|?>>
    <associate|auto-101|<tuple|17|?>>
    <associate|auto-102|<tuple|17.1|?>>
    <associate|auto-103|<tuple|17.2|?>>
    <associate|auto-104|<tuple|18|?>>
    <associate|auto-105|<tuple|18.1|?>>
    <associate|auto-106|<tuple|18.2|?>>
    <associate|auto-107|<tuple|18.3|?>>
    <associate|auto-108|<tuple|18.4|?>>
    <associate|auto-109|<tuple|18.5|?>>
    <associate|auto-11|<tuple|2|?>>
    <associate|auto-110|<tuple|18.5|?>>
    <associate|auto-111|<tuple|18.5|?>>
    <associate|auto-112|<tuple|18.5|?>>
    <associate|auto-113|<tuple|18.5|?>>
    <associate|auto-114|<tuple|18.5|?>>
    <associate|auto-115|<tuple|18.5|?>>
    <associate|auto-116|<tuple|19|?>>
    <associate|auto-117|<tuple|20|?>>
    <associate|auto-118|<tuple|21|?>>
    <associate|auto-119|<tuple|22|?>>
    <associate|auto-12|<tuple|2.1|?>>
    <associate|auto-120|<tuple|23|?>>
    <associate|auto-121|<tuple|24|?>>
    <associate|auto-122|<tuple|25|?>>
    <associate|auto-123|<tuple|25|?>>
    <associate|auto-124|<tuple|25|?>>
    <associate|auto-13|<tuple|2.2|?>>
    <associate|auto-14|<tuple|3|?>>
    <associate|auto-15|<tuple|3.1|?>>
    <associate|auto-16|<tuple|3.2|?>>
    <associate|auto-17|<tuple|3.3|?>>
    <associate|auto-18|<tuple|3.4|?>>
    <associate|auto-19|<tuple|3.5|?>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-20|<tuple|3.6|?>>
    <associate|auto-21|<tuple|3.7|?>>
    <associate|auto-22|<tuple|3.8|?>>
    <associate|auto-23|<tuple|3.9|?>>
    <associate|auto-24|<tuple|3.10|?>>
    <associate|auto-25|<tuple|4|?>>
    <associate|auto-26|<tuple|4.1|?>>
    <associate|auto-27|<tuple|4.2|?>>
    <associate|auto-28|<tuple|4.3|?>>
    <associate|auto-29|<tuple|4.4|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-30|<tuple|4.5|?>>
    <associate|auto-31|<tuple|4.6|?>>
    <associate|auto-32|<tuple|4.7|?>>
    <associate|auto-33|<tuple|4.8|?>>
    <associate|auto-34|<tuple|5|?>>
    <associate|auto-35|<tuple|5.1|?>>
    <associate|auto-36|<tuple|5.2|?>>
    <associate|auto-37|<tuple|5.3|?>>
    <associate|auto-38|<tuple|5.4|?>>
    <associate|auto-39|<tuple|5.5|?>>
    <associate|auto-4|<tuple|1.1|?>>
    <associate|auto-40|<tuple|6|?>>
    <associate|auto-41|<tuple|6.1|?>>
    <associate|auto-42|<tuple|6.2|?>>
    <associate|auto-43|<tuple|6.3|?>>
    <associate|auto-44|<tuple|6.4|?>>
    <associate|auto-45|<tuple|6.5|?>>
    <associate|auto-46|<tuple|7|?>>
    <associate|auto-47|<tuple|7.1|?>>
    <associate|auto-48|<tuple|7.2|?>>
    <associate|auto-49|<tuple|7.3|?>>
    <associate|auto-5|<tuple|1.2|?>>
    <associate|auto-50|<tuple|7.4|?>>
    <associate|auto-51|<tuple|8|?>>
    <associate|auto-52|<tuple|8.1|?>>
    <associate|auto-53|<tuple|8.2|?>>
    <associate|auto-54|<tuple|8.3|?>>
    <associate|auto-55|<tuple|8.4|?>>
    <associate|auto-56|<tuple|8.5|?>>
    <associate|auto-57|<tuple|9|?>>
    <associate|auto-58|<tuple|9.1|?>>
    <associate|auto-59|<tuple|9.2|?>>
    <associate|auto-6|<tuple|1.3|?>>
    <associate|auto-60|<tuple|9.3|?>>
    <associate|auto-61|<tuple|9.4|?>>
    <associate|auto-62|<tuple|9.5|?>>
    <associate|auto-63|<tuple|9.6|?>>
    <associate|auto-64|<tuple|10|?>>
    <associate|auto-65|<tuple|10.1|?>>
    <associate|auto-66|<tuple|10.2|?>>
    <associate|auto-67|<tuple|10.3|?>>
    <associate|auto-68|<tuple|10.4|?>>
    <associate|auto-69|<tuple|10.5|?>>
    <associate|auto-7|<tuple|1.4|?>>
    <associate|auto-70|<tuple|10.5|?>>
    <associate|auto-71|<tuple|11|?>>
    <associate|auto-72|<tuple|11.1|?>>
    <associate|auto-73|<tuple|11.2|?>>
    <associate|auto-74|<tuple|11.3|?>>
    <associate|auto-75|<tuple|11.4|?>>
    <associate|auto-76|<tuple|11.5|?>>
    <associate|auto-77|<tuple|12|?>>
    <associate|auto-78|<tuple|12.1|?>>
    <associate|auto-79|<tuple|12.2|?>>
    <associate|auto-8|<tuple|1.5|?>>
    <associate|auto-80|<tuple|12.3|?>>
    <associate|auto-81|<tuple|13|?>>
    <associate|auto-82|<tuple|13.1|?>>
    <associate|auto-83|<tuple|13.2|?>>
    <associate|auto-84|<tuple|13.3|?>>
    <associate|auto-85|<tuple|14|?>>
    <associate|auto-86|<tuple|14.1|?>>
    <associate|auto-87|<tuple|14.2|?>>
    <associate|auto-88|<tuple|14.3|?>>
    <associate|auto-89|<tuple|14.4|?>>
    <associate|auto-9|<tuple|1.6|?>>
    <associate|auto-90|<tuple|15|?>>
    <associate|auto-91|<tuple|15.1|?>>
    <associate|auto-92|<tuple|15.2|?>>
    <associate|auto-93|<tuple|15.3|?>>
    <associate|auto-94|<tuple|15.4|?>>
    <associate|auto-95|<tuple|16|?>>
    <associate|auto-96|<tuple|16.1|?>>
    <associate|auto-97|<tuple|16.2|?>>
    <associate|auto-98|<tuple|16.3|?>>
    <associate|auto-99|<tuple|16.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Preface
      - ix> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|I
      Reduction Semantics - 1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Semantics
      via Syntax - 5> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Analyzing
      Syntactic Semantics - 13> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>The
      <with|mode|<quote|math>|\<lambda\>>-Calculus - 23>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>ISWIN
      - 45> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>An
      Abstract Syntax Machine - 65> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Abstract
      Register Machines - 89> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Tail
      Calls and More Space Savings - 107>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Control:
      Errors, Exceptions, and Continuations - 115>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>State:
      Imperative Assignment - 145> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Simply
      Typed ISWIN - 175> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|II
      PLT Redex - 201> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>The
      Basics - 205> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Variables
      and Meta-functions - 217> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Layered
      Development - 227> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Testing
      - 237> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Debugging
      - 245> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Case
      Study 1: Order of Evaluation - 259>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Case
      Study 2: Continuations as Values - 271>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Typesetting
      - 277> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|A
      Appendix: A Tour of DrScheme - 297>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|III
      Applications - 307> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>Modular
      ACL2 - Carl Eastlund, Northeastern University - 311>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|20<space|2spc>Modeling
      Scheme Macros - Martin Gasbichler, Ziihlke Engineering AG - 327>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>A
      Model of Java/Scheme Interoperability - KathrynE. Gray, University of
      Utah> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|22<space|2spc>Implementing
      Hidden Type Variables in Fortress - Joe Hallett, Boston University,
      Eric Allen, Sun Microsystems, Inc., Sukyoung Ryu, Sun Microsystems,
      Inc. - 381> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|23<space|2spc>Type
      Checking and Inference via Reductions - George Kuan, University of
      Chicago - 403> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|24<space|2spc>Topsl:
      DSEL as Multi-language System - Jacob Matthews, University of Chicago -
      429> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|25<space|2spc>Prototyping
      Nested Schedulers - Mike Rainey, University of Chicago - 459>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography
      - 485> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Index
      - 495> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>