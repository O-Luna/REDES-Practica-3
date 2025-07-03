/*
 * Copyright 2022 NXP
 * All rights reserved.
 *
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef MQTT_FREERTOS_H
#define MQTT_FREERTOS_H

#include "mqtt_freertos_cfg.h"

#include <Drivers/MQTT/fsl_silicon_id.h>
#include "lwip/netif.h"
#include "board.h"
#include "lwip/opt.h"
#include "lwip/api.h"
#include "lwip/apps/mqtt.h"
#include "lwip/tcpip.h"
#include "fsl_gpio.h"

#include "Drivers/RGB/rgb.h"

void pre_publish(void *arg);
//void data_received(char dato[]);

typedef struct {
	const char *topic;
	const char *message;
} mqtt_args_t;


/*!
 * @brief Create and run example thread
 *
 * @param netif  netif which example should use
 */
void mqtt_freertos_run_thread(struct netif *netif);

#endif /* MQTT_FREERTOS_H */
