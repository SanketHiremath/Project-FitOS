/*
 * gc9a01.c
 *
 *  Created on: Dec 13, 2022
 *      Author: Sanket H
 */

#include "GC9A01.h"
#include "fonts.h"
#include "stm32l4xx_ll_gpio.h"
#include "malloc.h"
#include "string.h"


#define ORIENTATION 2   // Set the display orientation 0,1,2,3

// Command codes:
#define COL_ADDR_SET        0x2A
#define ROW_ADDR_SET        0x2B
#define MEM_WR              0x2C
#define COLOR_MODE          0x3A
#define COLOR_MODE__12_BIT  0x03
#define COLOR_MODE__16_BIT  0x05
#define COLOR_MODE__18_BIT  0x06
#define MEM_WR_CONT         0x3C
#define ON                  1
#define OFF                 0
#define RESET_ON            LL_GPIO_SetOutputPin(RES_GPIO_Port, RES_Pin)
#define RESET_OFF           LL_GPIO_ResetOutputPin(RES_GPIO_Port, RES_Pin)
#define DC_ON               LL_GPIO_SetOutputPin(DC_GPIO_Port, DC_Pin)
#define DC_OFF              LL_GPIO_ResetOutputPin(DC_GPIO_Port, DC_Pin)
#define CS_ON               LL_GPIO_SetOutputPin(CS_GPIO_Port, CS_Pin)
#define CS_OFF              LL_GPIO_ResetOutputPin(CS_GPIO_Port, CS_Pin);

extern SPI_HandleTypeDef hspi2;
extern DMA_HandleTypeDef hdma_spi2_tx;

void GC9A01_spi_tx(uint8_t *data, size_t len) {
    HAL_SPI_Transmit(&hspi2, data, len, 100);
}

void GC9A01_set_reset(uint8_t val) {
    if (val==0) {
        RESET_OFF;
    } else {
        RESET_ON;
    }
}

void GC9A01_set_data_command(uint8_t val) {
    if (val==0) {
        DC_OFF;
    } else {
        DC_ON;
    }
}

void GC9A01_set_chip_select(uint8_t val) {
    if (val==0) {
        CS_OFF;
    } else {
        CS_ON;
    }
}

void GC9A01_write_command(uint8_t cmd) {
    GC9A01_set_data_command(OFF);
    GC9A01_set_chip_select(OFF);
    GC9A01_spi_tx(&cmd, sizeof(cmd));
    GC9A01_set_chip_select(ON);
}

void GC9A01_write_data(uint8_t *data, size_t len) {
    GC9A01_set_data_command(ON);
    GC9A01_set_chip_select(OFF);
    GC9A01_spi_tx(data, len);
    GC9A01_set_chip_select(ON);
}

static inline void GC9A01_write_byte(uint8_t val) {
    GC9A01_write_data(&val, sizeof(val));
}

void GC9A01_write(uint8_t *data, size_t len) {
    GC9A01_write_command(MEM_WR);
    GC9A01_write_data(data, len);
}

void GC9A01_write_continue(uint8_t *data, size_t len) {
    GC9A01_write_command(MEM_WR_CONT);
    GC9A01_write_data(data, len);
}

void GC9A01_init(void) {

    GC9A01_set_chip_select(ON);
    HAL_Delay(5);
    GC9A01_set_reset(OFF);
    HAL_Delay(10);
    GC9A01_set_reset(ON);
    HAL_Delay(120);

    /* Initial Sequence */

    GC9A01_write_command(0xEF);

    GC9A01_write_command(0xEB);
    GC9A01_write_byte(0x14);

    GC9A01_write_command(0xFE);
    GC9A01_write_command(0xEF);

    GC9A01_write_command(0xEB);
    GC9A01_write_byte(0x14);

    GC9A01_write_command(0x84);
    GC9A01_write_byte(0x40);

    GC9A01_write_command(0x85);
    GC9A01_write_byte(0xFF);

    GC9A01_write_command(0x86);
    GC9A01_write_byte(0xFF);

    GC9A01_write_command(0x87);
    GC9A01_write_byte(0xFF);

    GC9A01_write_command(0x88);
    GC9A01_write_byte(0x0A);

    GC9A01_write_command(0x89);
    GC9A01_write_byte(0x21);

    GC9A01_write_command(0x8A);
    GC9A01_write_byte(0x00);

    GC9A01_write_command(0x8B);
    GC9A01_write_byte(0x80);

    GC9A01_write_command(0x8C);
    GC9A01_write_byte(0x01);

    GC9A01_write_command(0x8D);
    GC9A01_write_byte(0x01);

    GC9A01_write_command(0x8E);
    GC9A01_write_byte(0xFF);

    GC9A01_write_command(0x8F);
    GC9A01_write_byte(0xFF);


    GC9A01_write_command(0xB6);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);

    GC9A01_write_command(0x36);

#if ORIENTATION == 0
    GC9A01_write_byte(0x18);
#elif ORIENTATION == 1
    GC9A01_write_byte(0x28);
#elif ORIENTATION == 2
    GC9A01_write_byte(0x48);
#else
    GC9A01_write_byte(0x88);
#endif

    GC9A01_write_command(COLOR_MODE);
    GC9A01_write_byte(COLOR_MODE__16_BIT);

    GC9A01_write_command(0x90);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x08);

    GC9A01_write_command(0xBD);
    GC9A01_write_byte(0x06);

    GC9A01_write_command(0xBC);
    GC9A01_write_byte(0x00);

    GC9A01_write_command(0xFF);
    GC9A01_write_byte(0x60);
    GC9A01_write_byte(0x01);
    GC9A01_write_byte(0x04);

    GC9A01_write_command(0xC3);
    GC9A01_write_byte(0x13);
    GC9A01_write_command(0xC4);
    GC9A01_write_byte(0x13);

    GC9A01_write_command(0xC9);
    GC9A01_write_byte(0x22);

    GC9A01_write_command(0xBE);
    GC9A01_write_byte(0x11);

    GC9A01_write_command(0xE1);
    GC9A01_write_byte(0x10);
    GC9A01_write_byte(0x0E);

    GC9A01_write_command(0xDF);
    GC9A01_write_byte(0x21);
    GC9A01_write_byte(0x0c);
    GC9A01_write_byte(0x02);

    GC9A01_write_command(0xF0);
    GC9A01_write_byte(0x45);
    GC9A01_write_byte(0x09);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x26);
    GC9A01_write_byte(0x2A);

    GC9A01_write_command(0xF1);
    GC9A01_write_byte(0x43);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x72);
    GC9A01_write_byte(0x36);
    GC9A01_write_byte(0x37);
    GC9A01_write_byte(0x6F);

    GC9A01_write_command(0xF2);
    GC9A01_write_byte(0x45);
    GC9A01_write_byte(0x09);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x26);
    GC9A01_write_byte(0x2A);

    GC9A01_write_command(0xF3);
    GC9A01_write_byte(0x43);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x72);
    GC9A01_write_byte(0x36);
    GC9A01_write_byte(0x37);
    GC9A01_write_byte(0x6F);

    GC9A01_write_command(0xED);
    GC9A01_write_byte(0x1B);
    GC9A01_write_byte(0x0B);

    GC9A01_write_command(0xAE);
    GC9A01_write_byte(0x77);

    GC9A01_write_command(0xCD);
    GC9A01_write_byte(0x63);

    GC9A01_write_command(0x70);
    GC9A01_write_byte(0x07);
    GC9A01_write_byte(0x07);
    GC9A01_write_byte(0x04);
    GC9A01_write_byte(0x0E);
    GC9A01_write_byte(0x0F);
    GC9A01_write_byte(0x09);
    GC9A01_write_byte(0x07);
    GC9A01_write_byte(0x08);
    GC9A01_write_byte(0x03);

    GC9A01_write_command(0xE8);
    GC9A01_write_byte(0x34);

    GC9A01_write_command(0x62);
    GC9A01_write_byte(0x18);
    GC9A01_write_byte(0x0D);
    GC9A01_write_byte(0x71);
    GC9A01_write_byte(0xED);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x18);
    GC9A01_write_byte(0x0F);
    GC9A01_write_byte(0x71);
    GC9A01_write_byte(0xEF);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x70);

    GC9A01_write_command(0x63);
    GC9A01_write_byte(0x18);
    GC9A01_write_byte(0x11);
    GC9A01_write_byte(0x71);
    GC9A01_write_byte(0xF1);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x18);
    GC9A01_write_byte(0x13);
    GC9A01_write_byte(0x71);
    GC9A01_write_byte(0xF3);
    GC9A01_write_byte(0x70);
    GC9A01_write_byte(0x70);

    GC9A01_write_command(0x64);
    GC9A01_write_byte(0x28);
    GC9A01_write_byte(0x29);
    GC9A01_write_byte(0xF1);
    GC9A01_write_byte(0x01);
    GC9A01_write_byte(0xF1);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x07);

    GC9A01_write_command(0x66);
    GC9A01_write_byte(0x3C);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0xCD);
    GC9A01_write_byte(0x67);
    GC9A01_write_byte(0x45);
    GC9A01_write_byte(0x45);
    GC9A01_write_byte(0x10);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);

    GC9A01_write_command(0x67);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x3C);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x01);
    GC9A01_write_byte(0x54);
    GC9A01_write_byte(0x10);
    GC9A01_write_byte(0x32);
    GC9A01_write_byte(0x98);

    GC9A01_write_command(0x74);
    GC9A01_write_byte(0x10);
    GC9A01_write_byte(0x85);
    GC9A01_write_byte(0x80);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x00);
    GC9A01_write_byte(0x4E);
    GC9A01_write_byte(0x00);

    GC9A01_write_command(0x98);
    GC9A01_write_byte(0x3e);
    GC9A01_write_byte(0x07);

    GC9A01_write_command(0x35);
    GC9A01_write_command(0x21);

    GC9A01_write_command(0x11);
    HAL_Delay(120);
    GC9A01_write_command(0x29);
    HAL_Delay(20);

}

void GC9A01_set_frame(struct GC9A01_frame frame) {

    uint8_t data[4];

    GC9A01_write_command(COL_ADDR_SET);
    data[0] = (frame.start.X >> 8) & 0xFF;
    data[1] = frame.start.X & 0xFF;
    data[2] = (frame.end.X >> 8) & 0xFF;
    data[3] = frame.end.X & 0xFF;
    GC9A01_write_data(data, sizeof(data));

    GC9A01_write_command(ROW_ADDR_SET);
    data[0] = (frame.start.Y >> 8) & 0xFF;
    data[1] = frame.start.Y & 0xFF;
    data[2] = (frame.end.Y >> 8) & 0xFF;
    data[3] = frame.end.Y & 0xFF;
    GC9A01_write_data(data, sizeof(data));

}

void GC9A01A_SetWindow(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1) {
//	ColumnSet(x0, x1);
//	RowSet(y0, y1);

    //set the X coordinates
	GC9A01_write_command(0x2A);
	uint8_t data = 0x00;
	GC9A01_write_data(&data, sizeof(data));
	GC9A01_write_data(&x0, sizeof(x0));
	GC9A01_write_data(&data, sizeof(data));
	GC9A01_write_data(&x1, sizeof(x1));

    //set the Y coordinates
    GC9A01_write_command(0x2B);
    GC9A01_write_data(&data, sizeof(data));
    GC9A01_write_data(&y0, sizeof(data));
    GC9A01_write_data(&data, sizeof(data));
    GC9A01_write_data(&y1, sizeof(data));

	GC9A01_write_command(0x2C);

}

void GC9A01_FillRectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color) {
    // clipping
    if((x >= 240) || (y >= 240)) return;
    if((x + w - 1) >= 240) w = 240 - x;
    if((y + h - 1) >= 240) h = 240 - y;

    GC9A01_set_chip_select(ON);
    GC9A01A_SetWindow(x, y, x+w-1, y+h-1);

    uint8_t data[] = { color >> 8, color & 0xFF };
    GC9A01_set_data_command(ON);
    for(y = h; y > 0; y--) {
        for(x = w; x > 0; x--) {
            GC9A01_write_data(data, sizeof(data));
        }
    }

    GC9A01_set_chip_select(OFF);
}

void GC9A01_FillRectangleFast(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color) {
    // clipping
    if((x >= 240) || (y >= 240)) return;
    if((x + w - 1) >= 240) w = 240 - x;
    if((y + h - 1) >= 240) h = 240 - y;

    GC9A01_set_chip_select(ON);
    GC9A01A_SetWindow(x, y, x+w-1, y+h-1);

    // Prepare whole line in a single buffer
    uint8_t pixel[] = { color >> 8, color & 0xFF };
    uint8_t *line = malloc(w * sizeof(pixel));
    for(x = 0; x < w; ++x)
    	memcpy(line + x * sizeof(pixel), pixel, sizeof(pixel));

    GC9A01_set_data_command(ON);
    for(y = h; y > 0; y--)
//        HAL_SPI_Transmit(&ST7735_SPI_PORT, line, w * sizeof(pixel), HAL_MAX_DELAY);
    	GC9A01_write_data(line, sizeof(pixel));

    free(line);
    GC9A01_set_chip_select(OFF);
}

void GC9A01_FillBg(uint16_t color)
{
	GC9A01_FillRectangle(0, 0, 240, 240, color);
}


void GC9A01_SetBg(uint16_t x, uint16_t y, uint16_t bgcolor)
{
    uint32_t i, j;

    GC9A01A_SetWindow(x, y, 239, 239);

    for(i = 0; i < 239; i++) {
//        b = font.data[(ch - 32) * font.height + i];
        for(j = 0; j < 239; j++) {

                uint8_t data[] = { bgcolor >> 8, bgcolor & 0xFF };
                GC9A01_write_data(data, sizeof(data));

        }
    }
}

void GC9A01_WriteChar(uint16_t x, uint16_t y, char ch, FontDef font, uint16_t color, uint16_t bgcolor)
{
    uint32_t i, b, j;

    GC9A01A_SetWindow(x, y, x+font.width-1, y+font.height-1);

    for(i = 0; i < font.height; i++) {
        b = font.data[(ch - 32) * font.height + i];
        for(j = 0; j < font.width; j++) {
            if((b << j) & 0x8000)  {
                uint8_t data[] = { color >> 8, color & 0xFF };
                GC9A01_write_data(data, sizeof(data));
            } else {
                uint8_t data[] = { bgcolor >> 8, bgcolor & 0xFF };
                GC9A01_write_data(data, sizeof(data));
            }
        }
    }
}

void GC9A01_WriteString(uint16_t x, uint16_t y, const char* str, FontDef font, uint16_t color, uint16_t bgcolor) {
	GC9A01_set_chip_select(1);

    while(*str) {
        if(x + font.width >= 240) {
            x = 0;
            y += font.height;
            if(y + font.height >= 240) {
                break;
            }

            if(*str == ' ') {
                // skip spaces in the beginning of the new line
                str++;
                continue;
            }
        }

        GC9A01_WriteChar(x, y, *str, font, color, bgcolor);
        x += font.width;
        str++;
    }

    GC9A01_set_chip_select(0);
}

void GC9A01_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t* data) {
    if((x >= 240) || (y >= 240)) return;
    if((x + w - 1) >= 240) return;
    if((y + h - 1) >= 240) return;

    GC9A01_set_chip_select(0);
    GC9A01A_SetWindow(x, y, x+w-1, y+h-1);
    GC9A01_write_data((uint8_t*)data, sizeof(uint16_t)*w*h);
    GC9A01_set_chip_select(1);
}
