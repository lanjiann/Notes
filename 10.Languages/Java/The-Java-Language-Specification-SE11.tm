<TeXmacs|1.99.7>

<style|<tuple|book|old-spacing>>

<\body>
  <doc-data|<doc-title|Note to \PThe Java<rsup|<math|\<circledR\>>><rsup|>
  Language Specification - Java SE 11 Edition\Q>|<doc-author|<\author-data|<author-name|Jian
  Lan>>
    \;
  </author-data>>>

  <chapter|Introduction>

  <section|Organization of the Specification>

  <section|Example Programs>

  <section|Notation>

  <section|Relationship to Predefined Classes and Interfaces>

  <section|Feedback>

  <section|References>

  <chapter|Grammars>

  <section|Context-Free Grammars>

  <section|The Lexical Grammar>

  <section|The Syntactic Grammar>

  <section|Grammar Notation>

  <chapter|Lexical Structure>

  <section|Unicode 15>

  <section|Lexical Translations>

  <section|Unicode Escapes>

  <section|Line Terminators>

  <section|Input Elements and Tokens>

  <section|White Space>

  <section|Comments>

  <section|Identifiers>

  <section|Keywords>

  <section|Literals>

  <subsection|Integer Literals>

  <subsection|Floating-Point Literals>

  <subsection|Boolean Literals>

  <subsection|Character Literals>

  <subsection|String Literals>

  <subsection|Escape Sequences for Character and String Literals>

  <subsection|The Null Literal>

  <section|Separators>

  <section|Operators>

  <chapter|Types, Value, and Variables>

  <\itemize-dot>
    <item>The Java programming language is a <strong|statically typed
    language>, which means both

    <\itemize-minus>
      <item>EVERY <em|variable>

      <item>EVERY <em|expression>
    </itemize-minus>

    \ <underline|has a <em|type> that is known at compile time.>

    <item>The Java programming language is also a <strong|strongly typed
    language>, because <with|font-shape|italic|types>

    <\itemize-minus>
      <item>limit the values that a variable (�4.12) can hold or that an
      expression can produce,

      <item>limit the operations supported on those values, and determine the
      meaning of the operations.
    </itemize-minus>

    <strong|Strong static typing> HELPS <underline|detect errors at compile
    time>.

    <item>The <em|types> of the Java programming language are divided into
    <strong|TWO categories>:

    <\itemize-minus>
      <item><em|primitive types> (�4.2):

      <\enumerate-numeric>
        <item><em|boolean type>

        <item><em|numeric types>:

        <\enumerate-roman>
          <item><em|integral types>:

          <\enumerate-alpha>
            <item><code*|byte>

            <item><code*|short>

            <item><code*|int>\ 

            <item><code*|long>

            <item><code*|char>
          </enumerate-alpha>

          <item>floating-point types:

          <\enumerate-alpha>
            <item><code*|float>

            <item><code*|double>
          </enumerate-alpha>
        </enumerate-roman>
      </enumerate-numeric>

      <item><em|reference types> (�4.3):

      <\enumerate-numeric>
        <item><em|class types>\ 

        <item><em|interface types>

        <item><em|array types>

        <item><em|null type> (<with|color|red|From Jian: the book use the
        words <underline|a special>, WHY????????>)
      </enumerate-numeric>
    </itemize-minus>

    <item>An <em|object> (�4.3.1) is

    <\itemize-minus>
      <item>a DYNAMICALLY created <em|instance> of a <em|class type> OR\ 

      <item>a DYNAMICALLY created <em|array>.
    </itemize-minus>

    <item><underline|The <em|values> of a <em|reference type> are
    <em|references> to <em|objects>.>

    <item>ALL <em|objects>, including <em|arrays>, support the <em|methods>
    of <em|class> <code*|Object> (�4.3.2).

    <item><code*|String> literals are represented by String objects (�4.3.3).
    (<with|color|red|From Jian: the location of this line is a bit
    misleading! <code*|String> is also a class, and it supports the methods
    of class <code*|Object>>)
  </itemize-dot>

  <section|The Kinds of Types and Values>

  <\itemize-dot>
    <item><em|primitive types> and <em|reference types>.
    <with|font-shape|italic|primitive type values> and <em|reference type
    values>.

    <item>Lexical structure:

    <\render-code>
      <with|font-shape|italic|Type>:

      <\indent>
        <\with|font-shape|italic>
          PrimitiveType
        </with>

        <with|font-shape|italic|ReferenceType>
      </indent>
    </render-code>

    <item>There is also a special <em|null type>, the <em|type> of the
    expression <code*|null> (�3.10.7, �15.8.1), which has <underline|no
    name>.

    <item>Because the <em|null type> has <underline|no name>, it is
    IMPOSSIBLE to

    <\itemize-minus>
      <item><strong|declare> a <em|variable> of the
      <with|font-shape|italic|null type> OR

      <item><strong|cast to> the <em|null type>.
    </itemize-minus>

    <item>The <em|null reference> is the ONLY possible <em|value> of an
    expression of <em|null type>.

    <\with|color|red>
      Comment From Jian:

      Since the <with|font-shape|italic|null type> has no name, you cannot
      create a new <with|font-shape|italic|null type object>. When you use
      the <code*|null> <with|font-shape|italic|literal>, you always refer to
      the universal single <with|font-shape|italic|null type object>.
    </with>

    <item>The <em|null reference> can always be assigned or cast to any
    reference type (�5.2, �5.3, �5.5).

    <with|color|red|From Jian: the implementation????>

    <item>(non-normative information)

    In practice, the programmer can

    <\enumerate-numeric>
      <item>ignore the <em|null type> and

      <item>just <underline|pretend> that <code*|null> is merely a special
      <em|literal> that can be of ANY <em|reference type>.
    </enumerate-numeric>

    <with|color|red|Comment from Jian: A better choice is NEVER use
    <code*|null> \V use <code*|Optional> instead.>
  </itemize-dot>

  <section|Primitive Types and Values>

  <subsection|Integral Types and Values>

  <subsection|Integer Operations>

  <subsection|Floating-Point Types, Formats, and Values>

  <subsection|Floating-Point Operations>

  <subsection|The <code*|boolean> Type and <code*|boolean> Values>

  <section|Reference Types and Values>

  <subsection|Objects>

  <subsection|The Class <code*|Object>>

  <subsection|The Class <code*|String>>

  <subsection|When Reference Types Are the Same>

  <section|Type Variables>

  <section|Parameterized Types>

  <subsection|Type Arguments of Parameterized Types>

  <subsection|Members and Constructors of Parameterized Types>

  <section|Type Erasure>

  <section|Reifiable Types>

  <section|Raw Types>

  <section|Intersection Types>

  <section|Subtyping>

  <subsection|Subtyping among Primitive Types>

  <subsection|Subtyping among Class and Interface Types>

  <subsection|Subtyping among Array Types>

  <subsection|Least Upper Bound>

  <section|Where Types Are Used>

  <section|Variables>

  <subsection|Variables of Primitive Type>

  <subsection|Variables of Reference Type>

  <subsection|Kinds of Variables>

  <subsection|<with|font-family|tt|final> Variables>

  <subsection|Initial Values of Variables>

  <subsection|Types, Classes, and Interfaces>

  <chapter|Conversions and Contexts>

  <chapter|Names>

  <chapter|Packages and Modules>

  <chapter|Classes>

  <chapter|Interfaces>

  <chapter|Arrays>

  <chapter|Exceptions>

  <chapter|Execution>

  <chapter|Binary Compatibility>

  <chapter|Blocks and Statements>

  <chapter|Expressions>

  <section|Evaluation, Denotation, and Result>

  <section|Forms of Expressions>

  <section|Type of an Expression>

  <section|FP-strict Expression>

  <section|Expressions and Run-Time Checks>

  <section|Normal and Abrupt Completion of Evaluation>

  <section|Evaluation Order>

  <section|Primary Expressions>

  <section|Class Instance Creation Expressions>

  <section|Array Creation and Access Expressions>

  <section|Field Access Expressions>

  <section|Method Invocation Expressions>

  <section|Method Reference Expressions>

  <section|Postfix Expressions>

  <section|Unary Operators>

  <section|Cast Expressions>

  <section|Multiplicative Operators>

  <subsection|Multiplication Operator>

  <subsection|Division Operator <math|<with|font-family|tt|/>>>

  Assume <math|n> is the <em|dividend>, <math|d> is the
  <with|font-shape|italic|divisor>, and <math|q> is the
  <with|font-shape|italic|quotient> of them.

  <\itemize-dot>
    <item>Integer Division:

    <\itemize-minus>
      <item>Integer division rounds toward <math|0>. Which means
      <math|<underline|arg max<rsub|q\<in\>\<bbb-Z\><rsup|\<neq\>>>
      <around*|\||d\<cdot\>q|\|>\<leq\><around*|\||n|\|>>>.

      <item>The sign of <math|q> (<with|color|red|TODO:> binary numeric
      promotion (section 5.6.2)):

      <\itemize-arrow>
        <item><math|q> is positive when <math|<around*|\||n|\|>\<geq\><around*|\||d|\|>>,
        and <math|n> and <math|d> have the same sign.

        <item><math|q> is negative when <math|<around*|\||n|\|>\<geq\><around*|\||d|\|>>,
        and <math|n> and <math|d> have opposite signs.
      </itemize-arrow>

      <item>A special case that does NOT satisfy the rule above:

      if <math|n> is has the largest possible magnitude for its type, and the
      <math|d> is <math|-1>.

      <with|font-shape|italic|overflow> will happen, and no exception will be
      thrown.
    </itemize-minus>

    <item>Floting-point Division (follow the rules of IEEE 754 arithmetic):

    <with|color|red|TODO>
  </itemize-dot>

  <subsection|Remainder Operator <math|<with|font-family|tt|%>>>

  Assume <math|n> is the <em|dividend>, <math|d> is the
  <with|font-shape|italic|divisor>, and <math|r> is the
  <with|font-shape|italic|remainder> of them.

  <\itemize-dot>
    <item>Required Identity: <math|<around*|(|n/d|)>\<ast\>d+<around*|(|n%d|)>\<equiv\>n>

    <item>This identity <underline|HOLDS even in the special case> that
    <math|n> is has the largest possible magnitude for its type, and the
    <math|d> is <math|-1> (the remainder is <math|0>).

    <item>Unlike C and C++, this operator in Java can be used as
    floating-point operands, as well as integral operands.

    <item>It follows from this rule that the result

    <\itemize-minus>
      <item>can be negative only if the <math|n> is negative

      <item>can be positive only if the <math|n> is positive
    </itemize-minus>

    <item><math|<around*|\||r|\|>\<less\><around*|\||d|\|>>

    <item>Integer Remainder:

    <\itemize-minus>
      <item>If <math|d> is <math|0>, then an
      <with|font-family|tt|ArithmeticException> is thrown.
    </itemize-minus>

    <item>Floating-point Remainder:

    <with|color|red|TODO>
  </itemize-dot>

  \;

  <section|Additive Operators>

  <section|Shift Operators>

  <section|Relational Operators>

  <section|Equality Operators>

  <section|Bitwise and Logical Operators>

  <section|Conditional-And Operator <math|<with|font-family|tt|&&>>>

  <section|Conditional-Or Operator <math|<with|font-family|tt|\|\|>>>

  <section|Conditional Operator <math|<with|font-family|tt|:?>>>

  <section|Assignment Operators>

  <section|Lambda Expressions>

  <section|Constant Expressions>

  \;

  <chapter|Definite Assignment>

  <chapter|Threads and Locks>

  <chapter|Type Inference>

  <chapter|Syntax>

  \;

  \;
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|2.2|?>>
    <associate|auto-100|<tuple|15.20|?>>
    <associate|auto-101|<tuple|15.21|?>>
    <associate|auto-102|<tuple|15.22|?>>
    <associate|auto-103|<tuple|15.23|?>>
    <associate|auto-104|<tuple|15.24|?>>
    <associate|auto-105|<tuple|15.25|?>>
    <associate|auto-106|<tuple|15.26|?>>
    <associate|auto-107|<tuple|15.27|?>>
    <associate|auto-108|<tuple|15.28|?>>
    <associate|auto-109|<tuple|16|?>>
    <associate|auto-11|<tuple|2.3|?>>
    <associate|auto-110|<tuple|17|?>>
    <associate|auto-111|<tuple|18|?>>
    <associate|auto-112|<tuple|19|?>>
    <associate|auto-113|<tuple|19|?>>
    <associate|auto-12|<tuple|2.4|?>>
    <associate|auto-13|<tuple|3|?>>
    <associate|auto-14|<tuple|3.1|?>>
    <associate|auto-15|<tuple|3.2|?>>
    <associate|auto-16|<tuple|3.3|?>>
    <associate|auto-17|<tuple|3.4|?>>
    <associate|auto-18|<tuple|3.5|?>>
    <associate|auto-19|<tuple|3.6|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-20|<tuple|3.7|?>>
    <associate|auto-21|<tuple|3.8|?>>
    <associate|auto-22|<tuple|3.9|?>>
    <associate|auto-23|<tuple|3.10|?>>
    <associate|auto-24|<tuple|3.10.1|?>>
    <associate|auto-25|<tuple|3.10.2|?>>
    <associate|auto-26|<tuple|3.10.3|?>>
    <associate|auto-27|<tuple|3.10.4|?>>
    <associate|auto-28|<tuple|3.10.5|?>>
    <associate|auto-29|<tuple|3.10.6|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-30|<tuple|3.10.7|?>>
    <associate|auto-31|<tuple|3.11|?>>
    <associate|auto-32|<tuple|3.12|?>>
    <associate|auto-33|<tuple|4|?>>
    <associate|auto-34|<tuple|4.1|?>>
    <associate|auto-35|<tuple|4.2|?>>
    <associate|auto-36|<tuple|4.2.1|?>>
    <associate|auto-37|<tuple|4.2.2|?>>
    <associate|auto-38|<tuple|4.2.3|?>>
    <associate|auto-39|<tuple|4.2.4|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|auto-40|<tuple|4.2.5|?>>
    <associate|auto-41|<tuple|4.3|?>>
    <associate|auto-42|<tuple|4.3.1|?>>
    <associate|auto-43|<tuple|4.3.2|?>>
    <associate|auto-44|<tuple|4.3.3|?>>
    <associate|auto-45|<tuple|4.3.4|?>>
    <associate|auto-46|<tuple|4.4|?>>
    <associate|auto-47|<tuple|4.5|?>>
    <associate|auto-48|<tuple|4.5.1|?>>
    <associate|auto-49|<tuple|4.5.2|?>>
    <associate|auto-5|<tuple|1.4|?>>
    <associate|auto-50|<tuple|4.6|?>>
    <associate|auto-51|<tuple|4.7|?>>
    <associate|auto-52|<tuple|4.8|?>>
    <associate|auto-53|<tuple|4.9|?>>
    <associate|auto-54|<tuple|4.10|?>>
    <associate|auto-55|<tuple|4.10.1|?>>
    <associate|auto-56|<tuple|4.10.2|?>>
    <associate|auto-57|<tuple|4.10.3|?>>
    <associate|auto-58|<tuple|4.10.4|?>>
    <associate|auto-59|<tuple|4.11|?>>
    <associate|auto-6|<tuple|1.5|?>>
    <associate|auto-60|<tuple|4.12|?>>
    <associate|auto-61|<tuple|4.12.1|?>>
    <associate|auto-62|<tuple|4.12.2|?>>
    <associate|auto-63|<tuple|4.12.3|?>>
    <associate|auto-64|<tuple|4.12.4|?>>
    <associate|auto-65|<tuple|4.12.5|?>>
    <associate|auto-66|<tuple|4.12.6|?>>
    <associate|auto-67|<tuple|5|?>>
    <associate|auto-68|<tuple|6|?>>
    <associate|auto-69|<tuple|7|?>>
    <associate|auto-7|<tuple|1.6|?>>
    <associate|auto-70|<tuple|8|?>>
    <associate|auto-71|<tuple|9|?>>
    <associate|auto-72|<tuple|10|?>>
    <associate|auto-73|<tuple|11|?>>
    <associate|auto-74|<tuple|12|?>>
    <associate|auto-75|<tuple|13|?>>
    <associate|auto-76|<tuple|14|?>>
    <associate|auto-77|<tuple|15|?>>
    <associate|auto-78|<tuple|15.1|?>>
    <associate|auto-79|<tuple|15.2|?>>
    <associate|auto-8|<tuple|2|?>>
    <associate|auto-80|<tuple|15.3|?>>
    <associate|auto-81|<tuple|15.4|?>>
    <associate|auto-82|<tuple|15.5|?>>
    <associate|auto-83|<tuple|15.6|?>>
    <associate|auto-84|<tuple|15.7|?>>
    <associate|auto-85|<tuple|15.8|?>>
    <associate|auto-86|<tuple|15.9|?>>
    <associate|auto-87|<tuple|15.10|?>>
    <associate|auto-88|<tuple|15.11|?>>
    <associate|auto-89|<tuple|15.12|?>>
    <associate|auto-9|<tuple|2.1|?>>
    <associate|auto-90|<tuple|15.13|?>>
    <associate|auto-91|<tuple|15.14|?>>
    <associate|auto-92|<tuple|15.15|?>>
    <associate|auto-93|<tuple|15.16|?>>
    <associate|auto-94|<tuple|15.17|?>>
    <associate|auto-95|<tuple|15.17.1|?>>
    <associate|auto-96|<tuple|15.17.2|?>>
    <associate|auto-97|<tuple|15.17.3|?>>
    <associate|auto-98|<tuple|15.18|?>>
    <associate|auto-99|<tuple|15.19|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Organization of the Specification
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      1.2<space|2spc>Example Programs <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      1.3<space|2spc>Notation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      1.4<space|2spc>Relationship to Predefined Classes and Interfaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      1.5<space|2spc>Feedback <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>

      1.6<space|2spc>References <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Grammars>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      2.1<space|2spc>Context-Free Grammars
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      2.2<space|2spc>The Lexical Grammar <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      2.3<space|2spc>The Syntactic Grammar
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      2.4<space|2spc>Grammar Notation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Lexical
      Structure> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      3.1<space|2spc>Unicode 15 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      3.2<space|2spc>Lexical Translations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      3.3<space|2spc>Unicode Escapes <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>

      3.4<space|2spc>Line Terminators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>

      3.5<space|2spc>Input Elements and Tokens
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      3.6<space|2spc>White Space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      3.7<space|2spc>Comments <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>

      3.8<space|2spc>Identifiers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>

      3.9<space|2spc>Keywords <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      3.10<space|2spc>Literals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <with|par-left|<quote|1tab>|3.10.1<space|2spc>Integer Literals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|3.10.2<space|2spc>Floating-Point Literals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1tab>|3.10.3<space|2spc>Boolean Literals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|3.10.4<space|2spc>Character Literals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|3.10.5<space|2spc>String Literals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|3.10.6<space|2spc>Escape Sequences for
      Character and String Literals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|3.10.7<space|2spc>The Null Literal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      3.11<space|2spc>Separators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>

      3.12<space|2spc>Operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Types,
      Value, and Variables> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33><vspace|0.5fn>

      4.1<space|2spc>The Kinds of Types and Values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      4.2<space|2spc>Primitive Types and Values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>

      <with|par-left|<quote|1tab>|4.2.1<space|2spc>Integral Types and Values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|4.2.2<space|2spc>Integer Operations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|4.2.3<space|2spc>Floating-Point Types,
      Formats, and Values <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|4.2.4<space|2spc>Floating-Point Operations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|4.2.5<space|2spc>The
      <with|font-family|<quote|tt>|boolean> Type and
      <with|font-family|<quote|tt>|boolean> Values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      4.3<space|2spc>Reference Types and Values
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      <with|par-left|<quote|1tab>|4.3.1<space|2spc>Objects
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|4.3.2<space|2spc>The Class
      <with|font-family|<quote|tt>|Object>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|4.3.3<space|2spc>The Class
      <with|font-family|<quote|tt>|String>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|4.3.4<space|2spc>When Reference Types Are
      the Same <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      4.4<space|2spc>Type Variables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      4.5<space|2spc>Parameterized Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      <with|par-left|<quote|1tab>|4.5.1<space|2spc>Type Arguments of
      Parameterized Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|4.5.2<space|2spc>Members and Constructors
      of Parameterized Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      4.6<space|2spc>Type Erasure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      4.7<space|2spc>Reifiable Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      4.8<space|2spc>Raw Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>

      4.9<space|2spc>Intersection Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>

      4.10<space|2spc>Subtyping <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>

      <with|par-left|<quote|1tab>|4.10.1<space|2spc>Subtyping among Primitive
      Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <with|par-left|<quote|1tab>|4.10.2<space|2spc>Subtyping among Class and
      Interface Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|4.10.3<space|2spc>Subtyping among Array
      Types <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|4.10.4<space|2spc>Least Upper Bound
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      4.11<space|2spc>Where Types Are Used
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>

      4.12<space|2spc>Variables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>

      <with|par-left|<quote|1tab>|4.12.1<space|2spc>Variables of Primitive
      Type <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>>

      <with|par-left|<quote|1tab>|4.12.2<space|2spc>Variables of Reference
      Type <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|4.12.3<space|2spc>Kinds of Variables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|4.12.4<space|2spc><with|font-family|<quote|tt>|final>
      Variables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>>

      <with|par-left|<quote|1tab>|4.12.5<space|2spc>Initial Values of
      Variables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>>

      <with|par-left|<quote|1tab>|4.12.6<space|2spc>Types, Classes, and
      Interfaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>
    </associate>
  </collection>
</auxiliary>