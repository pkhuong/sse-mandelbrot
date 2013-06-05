(defpackage "MANDELBROT"
  (:use "CL" "SB-EXT" "SB-C"))

(in-package "MANDELBROT")
(defknown (f4+ f4* f4-) ((simd-pack single-float) (simd-pack single-float))
    (simd-pack single-float)
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)

(defknown f4<= ((simd-pack single-float) (simd-pack single-float))
    (simd-pack (signed-byte 32))
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)

(defknown i4- ((simd-pack (signed-byte 32)) (simd-pack (signed-byte 32)))
    (simd-pack (signed-byte 32))
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)

(defknown f4-sign-mask (simd-pack) (unsigned-byte 4)
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)

(defknown f4-sign-all-zero (simd-pack) boolean
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)
