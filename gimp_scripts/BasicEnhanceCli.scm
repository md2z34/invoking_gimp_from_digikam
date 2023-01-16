(define (basic-enhance-cli in_filename out_filename)
    (let* (
        (image (car (gimp-file-load RUN-NONINTERACTIVE in_filename in_filename)))
        (drawable (car (gimp-image-get-active-layer image))))
        (script-fu-basic-enhance image drawable)
        (gimp-file-save RUN-NONINTERACTIVE image drawable out_filename out_filename)
        (gimp-image-delete image)
    )
)
