<TeXmacs|1.99.7>

<style|<tuple|generic|old-spacing>>

<\body>
  <doc-data|<doc-title|Note to The Book<next-line> Semantics Engineering with
  PLT Redex<next-line><small|[by Matthias Felleisen, Robert Bruce Findler,
  Matthew Flatt]>>|<doc-author|<author-data|<author-name|Jian Lan>>>>

  <section*|Preface - ix>

  <section*|I Reduction Semantics - 1>

  <section|Semantics via Syntax - 5>

  <section|Analyzing Syntactic Semantics - 13>

  <section|The <math|\<lambda\>>-Calculus - 23>

  <section|ISWIN - 45>

  <section|An Abstract Syntax Machine - 65>

  <section|Abstract Register Machines - 89>

  <section|Tail Calls and More Space Savings - 107>

  <section|Control: Errors, Exceptions, and Continuations - 115>

  <section|State: Imperative Assignment - 145>

  <section|Simply Typed ISWIN - 175>

  \;

  <section*|II PLT Redex - 201>

  <section|The Basics - 205>

  <section|Variables and Meta-functions - 217>

  <section|Layered Development - 227>

  <section|Testing - 237>

  <section|Debugging - 245>

  <section|Case Study 1: Order of Evaluation - 259>

  <section|Case Study 2: Continuations as Values - 271>

  <section|Typesetting - 277>

  <section*|A Appendix: A Tour of DrScheme - 297>

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
    <associate|auto-10|<tuple|8|?>>
    <associate|auto-11|<tuple|9|?>>
    <associate|auto-12|<tuple|10|?>>
    <associate|auto-13|<tuple|10|?>>
    <associate|auto-14|<tuple|11|?>>
    <associate|auto-15|<tuple|12|?>>
    <associate|auto-16|<tuple|13|?>>
    <associate|auto-17|<tuple|14|?>>
    <associate|auto-18|<tuple|15|?>>
    <associate|auto-19|<tuple|16|?>>
    <associate|auto-2|<tuple|?|?>>
    <associate|auto-20|<tuple|17|?>>
    <associate|auto-21|<tuple|18|?>>
    <associate|auto-22|<tuple|18|?>>
    <associate|auto-23|<tuple|18|?>>
    <associate|auto-24|<tuple|19|?>>
    <associate|auto-25|<tuple|20|?>>
    <associate|auto-26|<tuple|21|?>>
    <associate|auto-27|<tuple|22|?>>
    <associate|auto-28|<tuple|23|?>>
    <associate|auto-29|<tuple|24|?>>
    <associate|auto-3|<tuple|1|?>>
    <associate|auto-30|<tuple|25|?>>
    <associate|auto-31|<tuple|25|?>>
    <associate|auto-32|<tuple|25|?>>
    <associate|auto-33|<tuple|25|?>>
    <associate|auto-34|<tuple|20|?>>
    <associate|auto-35|<tuple|20.1|?>>
    <associate|auto-36|<tuple|20.2|?>>
    <associate|auto-37|<tuple|20.3|?>>
    <associate|auto-38|<tuple|20.4|?>>
    <associate|auto-39|<tuple|21|?>>
    <associate|auto-4|<tuple|2|?>>
    <associate|auto-40|<tuple|21.1|?>>
    <associate|auto-41|<tuple|21.2|?>>
    <associate|auto-42|<tuple|21.3|?>>
    <associate|auto-43|<tuple|21.4|?>>
    <associate|auto-44|<tuple|22|?>>
    <associate|auto-45|<tuple|22.1|?>>
    <associate|auto-46|<tuple|22.2|?>>
    <associate|auto-47|<tuple|22.3|?>>
    <associate|auto-48|<tuple|22.4|?>>
    <associate|auto-49|<tuple|22.5|?>>
    <associate|auto-5|<tuple|3|?>>
    <associate|auto-50|<tuple|22.6|?>>
    <associate|auto-51|<tuple|23|?>>
    <associate|auto-52|<tuple|23.1|?>>
    <associate|auto-53|<tuple|23.2|?>>
    <associate|auto-54|<tuple|23.3|?>>
    <associate|auto-55|<tuple|24|?>>
    <associate|auto-56|<tuple|24.1|?>>
    <associate|auto-57|<tuple|24.2|?>>
    <associate|auto-58|<tuple|24.3|?>>
    <associate|auto-59|<tuple|25|?>>
    <associate|auto-6|<tuple|4|?>>
    <associate|auto-60|<tuple|25.1|?>>
    <associate|auto-61|<tuple|25.2|?>>
    <associate|auto-62|<tuple|25.3|?>>
    <associate|auto-63|<tuple|25.4|?>>
    <associate|auto-64|<tuple|26|?>>
    <associate|auto-65|<tuple|26.1|?>>
    <associate|auto-66|<tuple|26.2|?>>
    <associate|auto-67|<tuple|26.3|?>>
    <associate|auto-68|<tuple|26.3|?>>
    <associate|auto-69|<tuple|26.3|?>>
    <associate|auto-7|<tuple|5|?>>
    <associate|auto-70|<tuple|26.3|?>>
    <associate|auto-8|<tuple|6|?>>
    <associate|auto-9|<tuple|7|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|List
      of Figures - ix> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|List
      of Tables - xi> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Series
      Foreword - xiii> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Preface
      - xv> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction
      - 1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Semantics - 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Semantics of Programming
      Languages - 9 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Notes - 29
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>The
      Simply-Type <with|mode|<quote|math>|\<lambda\>>-Calculus - 31>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Syntax of
      <with|mode|<quote|math>|\<lambda\>>-Terms - 32
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Rules - 38
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Models - 47
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Notes - 61
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Categorical
      Models of Simple Types - 63> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Products and Cartesian
      Closure - 63 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|3.2<space|2spc><with|mode|<quote|math>|\<lambda\>>-Calculus
      with Constants and Products - 76 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>The Use of Category Theory -
      84 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Notes - 95
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Recursive
      Definitions of Functions - 97> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>A Programming Language for
      Computable Functions - 100 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Fixed Points in Complete
      Partial Orders - 114 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Fixed-Point Semantics of PCF
      - 128 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Bounded Recursion - 138
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Notes - 143
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Two
      Theories of Finite Approximation - 145>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Bc-Domains - 147
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Stable Functions and
      DI-Domains - 155 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>Equivalences between
      Categories - 167 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|5.4<space|2spc>Notes - 176
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Relating
      Interpretations - 177> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30><vspace|0.5fn>

      <with|par-left|<quote|1tab>|6.1<space|2spc>Full Abstraction - 178
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|1tab>|6.2<space|2spc>Extensions of Adequacy
      Results - 190 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|6.3<space|2spc>Products and Sums - 199
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|6.4<space|2spc>Notes - 212
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Types
      and Evaluation - 217> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35><vspace|0.5fn>

      <with|par-left|<quote|1tab>|7.1<space|2spc>Expressiveness - 218
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|7.2<space|2spc>Security - 226
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|7.3<space|2spc>Reference Types - 230
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|7.4<space|2spc>Recursive Types - 235
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|1tab>|7.5<space|2spc>ML Polymorphism and Type
      Inference - 243 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|1tab>|7.6<space|2spc>Notes - 253
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Universal
      Domains - 255> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn>

      <with|par-left|<quote|1tab>|8.1<space|2spc>Untyped
      <with|mode|<quote|math>|\<lambda\>>-Calculus - 255
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|8.2<space|2spc>Domain Equations - 270
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|8.3<space|2spc>Notes - 282
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Subtype
      Polymorphism - 285> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46><vspace|0.5fn>

      <with|par-left|<quote|1tab>|9.1<space|2spc>Subtypes as Subsets - 287
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|9.2<space|2spc>Subsumption as Implicit
      Coercion - 298 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|9.3<space|2spc>Notes - 312
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Domain
      Theory - 315> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50><vspace|0.5fn>

      <with|par-left|<quote|1tab>|10.1<space|2spc>Fixed Points of Functors -
      316 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|10.2<space|2spc>Bifinite Domains - 330
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|10.3<space|2spc>Adjunctions and
      Powerdomains - 340 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|10.4<space|2spc>Notes - 353
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Parametric
      Polymorphism - 357> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55><vspace|0.5fn>

      <with|par-left|<quote|1tab>|11.1<space|2spc>Calculi for Expressing
      Parametric Polymorphism - 357 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>>

      <with|par-left|<quote|1tab>|11.2<space|2spc>Indexed Families of Domains
      - 374 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|11.3<space|2spc>Notes - 387
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|List
      of Notations - 391> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography
      - 395> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Subject
      Index - 407> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>