(in-package "MANDELBROT")

(macrolet ((define-stub (name)
             `(defun ,name (x y)
                (,name x y))))
  (define-stub f4+)
  (define-stub f4*)
  (define-stub f4-)
  (define-stub f4<=)
  (define-stub i4-))

(defun f4-sign-mask (x)
  (f4-sign-mask x))

(defun f4-sign-all-zero (x)
  (f4-sign-all-zero x))

(deftype f4 ()
  '(simd-pack single-float))

(declaim (inline replicate-float))
(defun replicate-float (x)
  (%make-simd-pack-single x x x x))
