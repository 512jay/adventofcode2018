;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname advent1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; list-of-strings -> Number
; adds a list of string values
;(define (add los) 0);stub
(check-expect (add (cons "-1" (cons "+3" (cons "+0" '())))) 2)

(define (fn-for-los los)
  (cond
    [(empty? los) ...]
    [(cons? los) (... (first los) ...
                      (rest los) ...)]))
(define (add los)
  (cond
    [(empty? los) 0]
    [(equal? "+" (substring (first los) 0 1)) (+ (string->number (substring (first los) 1)) (add (rest los)))]
    [(equal? "-" (substring (first los) 0 1)) (+ (string->number (first los)) (add (rest los)))]
    [else (+ 0 (add (rest los)))]))


(add (read-words "input1"))
