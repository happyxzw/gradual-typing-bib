#lang at-exp racket

;; This module defines a gradual typing bibliography in
;; autobib format, suitable for use in papers written in Scribble

;; FIXME: this doesn't have all the papers from the README yet

(require scriblib/autobib)

(provide (all-defined-out))

;; ----------------------------------------

;; In a submodule so that it doesn't get exported automatically by
;; the outer module
(module util racket/base
  (provide (all-defined-out))

  (define short? #f)
  (define-syntax define/short
    (syntax-rules ()
      [(_ i e e*) (define i (if short? e e*))]
      [(_ i e) (define i e)]))

  (define IEEE "IEEE ")
  (define ACM "ACM ")
  (define International "Intl. ")
  (define Conference "Conf. ")
  (define Workshop "Wksp. ")
  (define Journal "J. ")
  (define Symposium "Sym. ")
  (define Transactions "Trans. ")

  (define/short asplas "APLAS" (string-append "Asian " Symposium "Programming Languages and Systems"))
  (define/short fpca "FPCA" (string-append ACM International Conference "Functional Programming Languages and Computer Architecture"))
  (define/short icfp "ICFP" (string-append ACM International Conference "Functional Programming"))
  (define/short pldi "PLDI" (string-append ACM Conference "Programming Language Design and Implementation"))
  (define/short popl "POPL" (string-append ACM Symposium "Principles of Programming Languages"))
  (define/short lncs "LNCS" "Lecture Notes in Computer Science")
  (define/short sigplan-notices "SIGPLAN Notices" (string-append ACM "SIGPLAN Notices"))
  (define/short scheme-workshop "SFP" (string-append Workshop "Scheme and Functional Programming"))
  (define/short ml-workshop "ML" (string-append Workshop "on ML"))
  (define/short jfp "JFP" (string-append Journal "Functional Programming"))
  (define/short hosc "HOSC" "Higher-Order and Symbolic Programming")
  (define/short lfp "LFP" "LISP and Functional Programming")
  (define/short lsc "LSC" "LISP and Symbolic Computation")
  (define/short ifl "IFL" (string-append International Symposium "Functional and Logic Programming"))
  (define/short tfp "TFP" (string-append Symposium "Trends in Functional Programming"))
  (define/short ecoop "ECOOP" (string-append "European " Conference "Object-Oriented Programming"))
  (define/short oopsla "OOPSLA" (string-append ACM Conference "Object-Oriented Programming, Systems, Languages and Applications"))
  (define/short ieee-software (string-append IEEE "Software"))
  (define/short toplas "TOPLAS" (string-append Transactions "Programming Languages and Systems"))
  (define/short dls "DLS" "Dynamic Languages Symposium")
  (define/short flops "FLOPS" (string-append Symposium "Functional and Logic Programming"))
  (define/short esop "ESOP" (string-append "European " Symposium "on Programming"))
  (define/short iclp "ICLP" (string-append  International Conference "on Logic Programming"))
  (define/short fse "FSE" (string-append International Symposium "on the Foundations of Software Engineering"))
  (define/short aosd "AOSD" (string-append International Conference "on Aspect-Oriented Software Development"))
  (define/short foal "FOAL" "Foundations of Aspect-Oriented Languages")
  (define/short tlca "TLCA" (string-append International Conference "Typed Lambda Calculi and Applications"))
  (define/short i&c "Info. & Comp." "Information and Computation"))

(require 'util)

;; ----------------------------------------
;; The original papers

(define st-sfp-2006
  (make-bib
   #:title "Gradual Typing for Functional Languages"
   #:author (authors "Jeremy G. Siek" "Walid Taha")
   #:location (proceedings-location scheme-workshop)
   #:date 2006))

(define thf-dls-2006
  (make-bib
   #:title "Interlanguage Migration: from Scripts to Programs"
   #:author (authors "Sam Tobin-Hochstadt" "Matthias Felleisen")
   #:location (proceedings-location dls #:pages '(964 974))
   #:date 2006))

(define mf-toplas-2007
  (make-bib
   #:title "Operational Semantics for Multi-Language Programs"
   #:author (authors "Jacob Matthews" "Robert Bruce Findler")
   #:date 2009
   #:location (journal-location toplas
                                #:volume 31
                                #:number 3
                                #:pages '("12:1" "12:44"))))

(define gktff-sfp-2006
  (make-bib
   #:title "Sage: Hybrid Checking for Flexible Specifications"
   #:author (authors "Jessica Gronski" "Kenneth Knowles" "Aaron Tomb"
                     "Stephen N. Freund" "Cormac Flanagan")
   #:date 2006
   #:location (proceedings-location scheme-workshop
                                    #:pages '(93 104))))

;; ----------------------------------------
;; Subsequent work

(define ktgff-tech-2006
  (make-bib
   #:title "Sage: Hybrid Checking for Flexible Specifications"
   #:author (authors "Jessica Gronski" "Kenneth Knowles" "Aaron Tomb"
                     "Stephen N. Freund" "Cormac Flanagan")
   #:date 2006))

(define htf-tfp-2007
  (make-bib
   #:title "Space Efficient Gradual Typing"
   #:author (authors "David Herman" "Aaron Tomb" "Cormac Flanagan")
   #:location (proceedings-location tfp)
   #:date "2007"))

(define st-ecoop-2007
  (make-bib
   #:title "Gradual Typing for Objects"
   #:author (authors "Jeremy G. Siek" "Walid Taha")
   #:location (proceedings-location ecoop #:pages '(2 27))
   #:date 2007))

(define cthf-sfp-2007
  (make-bib
   #:title "Advanced Macrology and the Implementation of Typed Scheme"
   #:author (authors "Ryan Culpepper" "Sam Tobin-Hochstadt" "Matthew Flatt")
   #:location (proceedings-location scheme-workshop #:pages '(1 13))
   #:date 2007))

(define wf-esop-2009
  (make-bib
   #:title "Well-typed Programs Can't be Blamed"
   #:author (authors "Philip Wadler" "Robert Bruce Findler")
   #:location (proceedings-location esop #:pages '(1 15))
   #:date 2009))

(define hansen-tech-2007
  (make-bib
   #:title "Evolutionary Programming and Gradual Typing in ECMAScript 41"
   #:author "Lars T. Hansen"
   #:date 2007))

(define hf-ml-2007
  (make-bib
   #:title "Status report: specifying JavaScript with ML"
   #:author (authors "David Herman" "Cormac Flanagan")
   #:location (proceedings-location ml-workshop)
   #:date 2007))

(define thf-popl-2008
  (make-bib
   #:title "The Design and Implementation of Typed Scheme"
   #:author (authors "Sam Tobin-Hochstadt" "Matthias Felleisen")
   #:location (proceedings-location popl
                                    #:pages '(395 406))
   #:date 2008))

(define gray-ecoop-2008
  (make-bib
   #:title "Safe Cross-Language Inheritance"
   #:author "Kathryn E. Gray"
   #:location (proceedings-location ecoop)
   #:date 2008))

(define sv-dls-2008
  (make-bib
   #:title "Gradual Typing with Unification-based Inference"
   #:author (authors "Jeremy G. Siek" "Manish Vachharajani")
   #:location (proceedings-location dls)
   #:date 2008))

(define sgt-esop-2009
  (make-bib
   #:title "Exploring the Design Space of Higher-Order Casts"
   #:author (authors "Jeremy G. Siek" "Ronald Garcia" "Walid Taha")
   #:location (proceedings-location esop)
   #:date 2009))

(define gray-chapter-2009
  (make-bib
   #:title "A Model of Java/Scheme Interoperability"
   #:author "Kathryn E. Gray"
   #:date 2009))

(define ii-cs-2009
  (make-bib
   #:title "Gradual Typing for Featherweight Java"
   #:author (authors "Lintaro Ina" "Atsushi Igarashi")
   #:location (journal-location "Computer Software")
   #:date 2009))

(define fafh-sac-2009
  (make-bib
   #:title "Static Type Inference for Ruby"
   #:author (authors "Michael Furr" "Jong-hoon An"
                     "Jeffrey S. Foster" "Michael Hicks")
   ;; FIXME
   ;#:location (proceedings-location sac)
   #:date 2009))

(define shb-icfp-2009
  (make-bib
   #:title "A Theory of Typed Coercions and its Applications"
   #:author (authors "Nikhil Swamy" "Michael Hicks" "Gavin M. Bierman")
   #:location (proceedings-location icfp)
   #:date 2009))

(define bfnorsvw-oopsla-2009
  (make-bib
   #:title "Thorn: Robust, Concurrent, Extensible Scripting on the JVM"
   #:author (authors "Bard Bloom" "John Field" "Nathaniel Nystrom"
                     "Johan Ostlund" "Gregor Richards" "Rok Strnisa"
                     "Jan Vitek" "Tobias Wrigstad")
   #:location (proceedings-location oopsla)
   #:date 2009))

(define afsw-popl-2011
  (make-bib
   #:author (authors "Amal Ahmed" "Robert Bruce Findler"
                     "Jeremy G. Siek" "Philip Wadler")
   #:title "Blame for All"
   #:location (proceedings-location popl #:pages '(201 214))
   #:date 2011))

(define dthf-esop-2012
  (make-bib
   #:title "Complete Monitors for Behavioral Contracts"
   #:author (authors "Christos Dimoulas" "Sam Tobin-Hochstadt" "Matthias Felleisen")
   #:location (proceedings-location esop #:pages '(214 233))
   #:date 2012))

(define sthff-oopsla-2012
  (make-bib
   #:author (authors "T. Stephen Strickland" "Sam Tobin-Hochstadt" "Robert Bruce Findler" "Matthew Flatt")
   #:title "Chaperones and Impersonators: Run-time Support for Reasonable Interposition"
   #:location (proceedings-location oopsla)
   #:date 2012))

(define tsdthf-oopsla-2012
  (make-bib
   #:author (authors "Asumu Takikawa" "T. Stephen Strickland"
                     "Christos Dimoulas" "Sam Tobin-Hochstadt"
                     "Matthias Felleisen")
   #:title "Gradual Typing for First-Class Classes"
   #:location (proceedings-location oopsla)
   #:date 2012))

(define tsth-esop-2013
  (make-bib
   #:author (authors "Asumu Takikawa" "T. Stephen Strickland" "Sam Tobin-Hochstadt")
   #:title "Constraining Delimited Control with Contracts"
   #:location (proceedings-location esop)
   #:date "2013"))

(define acftd-scp-2013
  (make-bib
   #:author (authors "Esteban Allende" "Oscar Callaú" "Johan Fabry" "Éric Tanter" "Marcus Denker")
   #:title "Gradual typing for Smalltalk"
   #:location (journal-location "Science of Computer Programming")
   #:date 2013))

;; ----------------------------------------
; Early Work on Interoperation

(define ff-icfp-2002
  (make-bib
   #:title "Contracts for Higher-Order Functions"
   #:author (authors "Robert Bruce Findler" "Matthias Felleisen")
   #:location (proceedings-location icfp #:pages '(48 59))
   #:date "2002"))

;; ----------------------------------------
; Related

;; ----------------------------------------
; Contracts

;; ----------------------------------------
; Typing Untyped Languages

;; ----------------------------------------
; Type Systems for Gradual Typing

(define bonnaire-sergeant-thesis-2012
  (make-bib
   #:title "A Practical Optional Type System for Clojure"
   #:location (dissertation-location
               #:institution "University of Western Australia"
               #:degree "Honour's")
   #:date 2012))
