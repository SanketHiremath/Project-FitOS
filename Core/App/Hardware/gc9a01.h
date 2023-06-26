/*
 * gc9a01.h
 *
 *  Created on: Dec 13, 2022
 *      Author: Sanket H
 */

#ifndef INC_GC9A01_H_
#define INC_GC9A01_H_

#include <stdint.h>
#include <stddef.h>
#include "stm32l4xx_ll_utils.h"
#include "main.h"
#include "fonts.h"


// Hardware abstraction layer
// Should be defined by the user of the library
void GC9A01_set_reset(uint8_t val);
void GC9A01_set_data_command(uint8_t val);
void GC9A01_set_chip_select(uint8_t val);

struct GC9A01_point {
    uint16_t X, Y;
};

struct GC9A01_frame {
    struct GC9A01_point start, end;
};

void GC9A01_init(void);
void GC9A01_set_frame(struct GC9A01_frame frame);
void GC9A01_write(uint8_t *data, size_t len);
void GC9A01_write_continue(uint8_t *data, size_t len);

void GC9A01_write_data(uint8_t *data, size_t len);
void GC9A01_write_command(uint8_t cmd);
void GC9A01A_SetWindow(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1); //Used for the fonts

void GC9A01_FillBg(uint16_t color);
void GC9A01_FillRectangleFast(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void GC9A01_FillRectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void GC9A01_SetBg(uint16_t x, uint16_t y, uint16_t bgcolor);
void GC9A01_WriteChar(uint16_t x, uint16_t y, char ch, FontDef font, uint16_t color, uint16_t bgcolor);
void GC9A01_WriteString(uint16_t x, uint16_t y, const char* str, FontDef font, uint16_t color, uint16_t bgcolor);
void GC9A01_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t* data);

#endif /* INC_GC9A01_H_ */
