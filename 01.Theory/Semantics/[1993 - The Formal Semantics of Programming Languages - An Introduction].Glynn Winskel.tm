<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|Note to The Book<line-break>The Formal Semantics of
  Programming Languages>|<doc-author|<author-data|<author-name|Jian Lan>>>>

  <section|>

  <subsection|>

  <subsection|Sets>

  <subsubsection|Sets and properties>

  <subsubsection|Some important sets>

  <\description>
    <item*|<em|null> or <em|empty set>><math|\<emptyset\>>

    <item*|<em|natural numbers>><math|\<omega\>> (includes 0)
  </description>

  <subsubsection|Constructions on sets>

  <\itemize-minus>
    <item><strong|Comprehension>:

    <math|<around*|{|x\<in\>X\|P <around*|(|x|)>|}>> can be written in the
    <em|comprehension form> <math|<around*|{|x\|x\<in\>X&P
    <around*|(|x|)>|}>>

    <with|color|red|TODO>

    <item><strong|Powerset>:

    <\equation*>
      \<cal-P\>\<frak-o\>\<omega\> <around*|(|X|)>=<around*|{|Y\|Y\<subseteq\>X|}>
    </equation*>

    <item><strong|Indexed sets>:

    <\equation*>
      <around*|{|x<rsub|i>\|i\<in\>I|}>
    </equation*>

    <item><strong|Union>:

    <\equation*>
      X\<cup\>Y=<around*|{|a\|a\<in\>X or a\<in\>Y|}>
    </equation*>

    <item><strong|Big union>: Let <math|X> be a set of sets. Their
    <with|font-shape|italic|union>

    <\equation*>
      <big|cup>X=<around*|{|a\|\<exists\>x\<in\>X. a\<in\>x|}>
    </equation*>

    When the <math|X>'s above are some <with|font-shape|italic|indexed sets>,
    we often write it as <math|<big|cup><rsub|i\<in\>I>x<rsub|i>>.

    <item><strong|Intersection>:

    <\equation*>
      X\<cap\>Y=<around*|{|a\|a\<in\>X & a\<in\>Y|}>
    </equation*>

    <item><strong|Big intersection>: Let <math|X> be <underline|nonempty> set
    of sets. Then

    <\equation*>
      <big|cap>X=<around*|{|a\|\<forall\>x\<in\>X. a\<in\>x|}>
    </equation*>

    is a set called its <with|font-shape|italic|intersection>.

    <item><strong|Product>:

    <\itemize-dot>
      <item><with|font-shape|italic|pairs>:
    </itemize-dot>

    <\itemize-dot>
      <item><strong|Exercise 1.1>

      <\proof>
        \;

        =\<gtr\>

        <\math>
          <around*|(|a,b|)>=<around*|{|<around*|{|a|}>,<around*|{|a,b|}>|}>

          <around*|(|a<rprime|'>,b<rprime|'>|)>=<around*|{|<around*|{|a<rprime|'>|}>,<around*|{|a<rprime|'>,b<rprime|'>|}>|}>
        </math>

        If <math|<around*|(|a,b|)>=<around*|(|a<rprime|'>,b<rprime|'>|)>>,
        <math|<around*|{|<around*|{|a|}>,<around*|{|a,b|}>|}>=<around*|{|<around*|{|a<rprime|'>|}>,<around*|{|a<rprime|'>,b<rprime|'>|}>|}>>.
        From the property of sets, we know <math|a> must be equal to
        <math|a<rprime|'>> and <math|<around*|{|a,b|}>=<around*|{|a<rprime|'>,b<rprime|'>|}>>
        which implies <math|a=a<rprime|'>> and <math|b=b<rprime|'>>.

        \<less\>=

        If <math|a=a<rprime|'>> and <math|b=b<rprime|'>>, from the property
        of sets, we know <math|<around*|{|<around*|{|a|}>,<around*|{|a,b|}>|}>=<around*|{|<around*|{|a<rprime|'>|}>,<around*|{|a<rprime|'>,b<rprime|'>|}>|}>>.
        From one of the representation of <with|font-shape|italic|pairs>, we
        know this is actually <math|<around*|(|a,b|)>=<around*|(|a<rprime|'>,b<rprime|'>|)>>.

        \;
      </proof>

      <item>For sets <math|X> and <math|Y>, their
      <with|font-shape|italic|product> is the set

      <\equation*>
        X\<times\>Y=<around*|{|<around*|(|a,b|)>\|a\<in\>X & b\<in\>Y|}>
      </equation*>
    </itemize-dot>

    <item><strong|Disjoint union>:<with|color|red|toDO>

    \;

    <item><strong|Set difference>:

    <\equation*>
      X<around*|\\||\<nobracket\>>Y=<around*|{|x\|x\<in\>X & x\<nin\>Y|}>
    </equation*>
  </itemize-minus>

  <subsubsection|The axiom of foundation>

  <\description>
    <item*|The axiom of foundation>A set must be constructed from some
    non-set elements or sets which have themselves been constructed earlier.
  </description>

  <subsection|Relations and functions>

  <\description>
    <item*|<with|font-shape|italic|binary relation> (between X and Y)>An
    element of <math|\<cal-P\>\<omicron\>w <around*|(|X\<times\>Y|)>> \U a
    subset of pairs in the relation.

    When <math|R> is a relation <math|R\<subseteq\>X\<times\>Y> we shall
    often write <math|x R y> for <math|<around*|(|x,y|)>\<in\>R>.

    <item*|<with|font-shape|italic|partial function> (from X to Y)>

    <item*|<with|font-shape|italic|(total) function>>
  </description>

  <\itemize-dot>
    <item><strong|Exercise 1.2>

    Usually we can find more than one maps to statisfy<math|>
    <math|<around*|(|X\<rightharpoonup\>Y|)>> or
    <math|<around*|(|X\<rightarrow\>Y|)>>.
  </itemize-dot>

  <subsubsection|Lambda notation>

  Suppose <math|f:X\<rightarrow\>Y> is a function which for any element
  <math|x> in <math|X> gives a value <math|f <around*|(|x|)>> which exactly
  described by expression <math|e>, probably involving <math|x>. Then we
  sometime write

  <\equation*>
    \<lambda\> x\<in\>X.e
  </equation*>

  for the function <math|f>. Thus

  <\equation*>
    \<lambda\> x\<in\>X.e=<around*|{|<around*|(|x,e|)>\|x\<in\>X|}>
  </equation*>

  \;

  For example, <math|\<lambda\> x\<in\>\<omega\>.<around*|(|x+1|)>> is the
  successor function.

  <\subsubsection>
    Composing relations and functions
  </subsubsection>

  <\description>
    <item*|<with|font-shape|italic|composition>>

    <\equation*>
      S\<circ\>R=<rsub|def><around*|{|<around*|(|x,z|)>\<in\>X\<times\>Z\|\<exists\>y\<in\>Y.
      <around*|(|x,y|)>\<in\>R&<around*|(|y,z|)>\<in\>S|}>
    </equation*>
  </description>

  <\itemize-dot>
    <item>Exercise 1.3

    <item>Exercise 1.4
  </itemize-dot>

  \;

  <\description>
    <item*|<strong|<with|font-shape|italic|Cantor's diagonal argument>>>
  </description>

  <\itemize-dot>
    <item>Exercise 1.5
  </itemize-dot>

  \;

  <subsubsection|Direct and inverse image of a relation>

  <subsubsection|Equivalence relations>

  <\itemize-dot>
    <item>Exercise 1.6

    <item>Exercise 1.7

    <item>Exercise 1.8
  </itemize-dot>

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|1.3.2|?>>
    <associate|auto-11|<tuple|1.3.3|?>>
    <associate|auto-12|<tuple|1.3.4|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|1.2.1|?>>
    <associate|auto-5|<tuple|1.2.2|?>>
    <associate|auto-6|<tuple|1.2.3|?>>
    <associate|auto-7|<tuple|1.2.4|?>>
    <associate|auto-8|<tuple|1.3|?>>
    <associate|auto-9|<tuple|1.3.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.2.1<space|2spc>Sets and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.2.2<space|2spc>Some important sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.2.3<space|2spc>Constructions on sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|1.2.4<space|2spc>The axiom of foundation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Relations and functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>Lambda notation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|1.3.2<space|2spc>Composing relations and
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|1.3.3<space|2spc>Direct and inverse image
      of a relation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|2tab>|1.3.4<space|2spc>Equivalence relations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>
    </associate>
  </collection>
</auxiliary>