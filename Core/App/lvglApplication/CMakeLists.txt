SET(SOURCES components/ui_comp_image2.c
    components/ui_comp.c
    screens/ui_Screen1.c
    ui.c
    components/ui_comp_hook.c
    ui_helpers.c
    images/ui_img_pastel_purple_png.c
    images/ui_img_ring_png.c
    images/ui_img_watch_hour_modern_png.c
    images/ui_img_watch_min_modern_png.c
    images/ui_img_watch_sec_modern_png.c
    images/ui_img_1117480529.c)

add_library(ui ${SOURCES})
