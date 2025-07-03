/*
 * web_config_d.h
 *
 *  Created on: 2 jul. 2025
 *      Author: oralu
 */

#ifndef WEB_CONFIG_D_H_
#define WEB_CONFIG_D_H_

#include "lwip/tcpip.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "wpl.h"
#include "timers.h"
#include "httpsrv.h"
#include "http_server.h"

#include "fsl_debug_console.h"
#include "webconfig.h"
#include "cred_flash_storage.h"

#include <stdio.h>

#include "FreeRTOS.h"

#include "fsl_power.h"

typedef enum board_wifi_states
{
    WIFI_STATE_CLIENT,
    WIFI_STATE_CONNECTING,
    WIFI_STATE_CLIENT_SCAN,
    WIFI_STATE_AP,
    WIFI_STATE_AP_SCAN,
} board_wifi_states;

struct board_state_variables
{
    board_wifi_states wifiState;
    char ssid[WPL_WIFI_SSID_LENGTH];
    char password[WPL_WIFI_PASSWORD_LENGTH];
    char security[WIFI_SECURITY_LENGTH];
    bool connected;
    TaskHandle_t mainTask;
};


extern struct board_state_variables g_BoardState;

void main_task(void *arg);


#endif /* WEB_CONFIG_D_H_ */
