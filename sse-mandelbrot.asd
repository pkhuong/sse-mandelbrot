(asdf:defsystem "sse-mandelbrot"
  :version "0.0.1"
  :licence "BSD"
  :description "A single-float mandelbrot inner loop in SSE on SBCL/x86-64"
  :serial t
  :components ((:file "definitions")
               (:file "vops")
               (:file "intrinsics")
               (:file "mandelbrot")))
