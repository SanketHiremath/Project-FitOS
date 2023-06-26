// This file was generated by SquareLine Studio
// SquareLine Studio version: SquareLine Studio 1.3.0
// LVGL version: 8.3.6
// Project name: SquareLine_Project

#include "../ui.h"

// COMPONENT Image2

lv_obj_t * ui_Image2_create(lv_obj_t * comp_parent)
{

    lv_obj_t * cui_Image2;
    cui_Image2 = lv_img_create(comp_parent);
    lv_obj_set_width(cui_Image2, 289);
    lv_obj_set_height(cui_Image2, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(cui_Image2, 9);
    lv_obj_set_y(cui_Image2, 246);
    lv_obj_set_align(cui_Image2, LV_ALIGN_CENTER);
    lv_obj_add_flag(cui_Image2, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(cui_Image2, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    lv_obj_t ** children = lv_mem_alloc(sizeof(lv_obj_t *) * _UI_COMP_IMAGE2_NUM);
    children[UI_COMP_IMAGE2_IMAGE2] = cui_Image2;
    lv_obj_add_event_cb(cui_Image2, get_component_child_event_cb, LV_EVENT_GET_COMP_CHILD, children);
    lv_obj_add_event_cb(cui_Image2, del_component_child_event_cb, LV_EVENT_DELETE, children);
    ui_comp_Image2_create_hook(cui_Image2);
    return cui_Image2;
}

