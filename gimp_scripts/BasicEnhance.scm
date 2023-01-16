(define (script-fu-basic-enhance image layer)
    (gimp-image-undo-group-start image)
    (gimp-levels-auto layer)
    (gimp-drawable-curves-spline layer HISTOGRAM-VALUE 10 #(0 0 40 30 128 128 216 226 255 255))
    (plug-in-unsharp-mask RUN-NONINTERACTIVE image layer 3 0.5 0.2)
    (gimp-image-undo-group-end image)
    (gimp-displays-flush)
)

(script-fu-register
    "script-fu-basic-enhance"
    "<Image>/Image/Basic enhance"
    "Automatic level, s-curve, and sharp."
    "kipe"
    "(c) kipe"
    "Jan 2023"
    "RGB*, GRAY*"
    SF-IMAGE "Image" 0
    SF-DRAWABLE "Layer" 0
)