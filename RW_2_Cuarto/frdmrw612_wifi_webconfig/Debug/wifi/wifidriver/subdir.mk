################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wifi/wifidriver/mlan_11ac.c \
../wifi/wifidriver/mlan_11ax.c \
../wifi/wifidriver/mlan_11d.c \
../wifi/wifidriver/mlan_11h.c \
../wifi/wifidriver/mlan_11k.c \
../wifi/wifidriver/mlan_11n.c \
../wifi/wifidriver/mlan_11n_aggr.c \
../wifi/wifidriver/mlan_11n_rxreorder.c \
../wifi/wifidriver/mlan_11v.c \
../wifi/wifidriver/mlan_action.c \
../wifi/wifidriver/mlan_api.c \
../wifi/wifidriver/mlan_cfp.c \
../wifi/wifidriver/mlan_cmdevt.c \
../wifi/wifidriver/mlan_glue.c \
../wifi/wifidriver/mlan_init.c \
../wifi/wifidriver/mlan_join.c \
../wifi/wifidriver/mlan_mbo.c \
../wifi/wifidriver/mlan_misc.c \
../wifi/wifidriver/mlan_scan.c \
../wifi/wifidriver/mlan_shim.c \
../wifi/wifidriver/mlan_sta_cmd.c \
../wifi/wifidriver/mlan_sta_cmdresp.c \
../wifi/wifidriver/mlan_sta_event.c \
../wifi/wifidriver/mlan_sta_ioctl.c \
../wifi/wifidriver/mlan_sta_rx.c \
../wifi/wifidriver/mlan_txrx.c \
../wifi/wifidriver/mlan_uap_cmdevent.c \
../wifi/wifidriver/mlan_uap_ioctl.c \
../wifi/wifidriver/mlan_wmm.c \
../wifi/wifidriver/wifi-debug.c \
../wifi/wifidriver/wifi-imu.c \
../wifi/wifidriver/wifi-mem.c \
../wifi/wifidriver/wifi-uap.c \
../wifi/wifidriver/wifi-wps.c \
../wifi/wifidriver/wifi.c \
../wifi/wifidriver/wifi_pwrmgr.c 

C_DEPS += \
./wifi/wifidriver/mlan_11ac.d \
./wifi/wifidriver/mlan_11ax.d \
./wifi/wifidriver/mlan_11d.d \
./wifi/wifidriver/mlan_11h.d \
./wifi/wifidriver/mlan_11k.d \
./wifi/wifidriver/mlan_11n.d \
./wifi/wifidriver/mlan_11n_aggr.d \
./wifi/wifidriver/mlan_11n_rxreorder.d \
./wifi/wifidriver/mlan_11v.d \
./wifi/wifidriver/mlan_action.d \
./wifi/wifidriver/mlan_api.d \
./wifi/wifidriver/mlan_cfp.d \
./wifi/wifidriver/mlan_cmdevt.d \
./wifi/wifidriver/mlan_glue.d \
./wifi/wifidriver/mlan_init.d \
./wifi/wifidriver/mlan_join.d \
./wifi/wifidriver/mlan_mbo.d \
./wifi/wifidriver/mlan_misc.d \
./wifi/wifidriver/mlan_scan.d \
./wifi/wifidriver/mlan_shim.d \
./wifi/wifidriver/mlan_sta_cmd.d \
./wifi/wifidriver/mlan_sta_cmdresp.d \
./wifi/wifidriver/mlan_sta_event.d \
./wifi/wifidriver/mlan_sta_ioctl.d \
./wifi/wifidriver/mlan_sta_rx.d \
./wifi/wifidriver/mlan_txrx.d \
./wifi/wifidriver/mlan_uap_cmdevent.d \
./wifi/wifidriver/mlan_uap_ioctl.d \
./wifi/wifidriver/mlan_wmm.d \
./wifi/wifidriver/wifi-debug.d \
./wifi/wifidriver/wifi-imu.d \
./wifi/wifidriver/wifi-mem.d \
./wifi/wifidriver/wifi-uap.d \
./wifi/wifidriver/wifi-wps.d \
./wifi/wifidriver/wifi.d \
./wifi/wifidriver/wifi_pwrmgr.d 

OBJS += \
./wifi/wifidriver/mlan_11ac.o \
./wifi/wifidriver/mlan_11ax.o \
./wifi/wifidriver/mlan_11d.o \
./wifi/wifidriver/mlan_11h.o \
./wifi/wifidriver/mlan_11k.o \
./wifi/wifidriver/mlan_11n.o \
./wifi/wifidriver/mlan_11n_aggr.o \
./wifi/wifidriver/mlan_11n_rxreorder.o \
./wifi/wifidriver/mlan_11v.o \
./wifi/wifidriver/mlan_action.o \
./wifi/wifidriver/mlan_api.o \
./wifi/wifidriver/mlan_cfp.o \
./wifi/wifidriver/mlan_cmdevt.o \
./wifi/wifidriver/mlan_glue.o \
./wifi/wifidriver/mlan_init.o \
./wifi/wifidriver/mlan_join.o \
./wifi/wifidriver/mlan_mbo.o \
./wifi/wifidriver/mlan_misc.o \
./wifi/wifidriver/mlan_scan.o \
./wifi/wifidriver/mlan_shim.o \
./wifi/wifidriver/mlan_sta_cmd.o \
./wifi/wifidriver/mlan_sta_cmdresp.o \
./wifi/wifidriver/mlan_sta_event.o \
./wifi/wifidriver/mlan_sta_ioctl.o \
./wifi/wifidriver/mlan_sta_rx.o \
./wifi/wifidriver/mlan_txrx.o \
./wifi/wifidriver/mlan_uap_cmdevent.o \
./wifi/wifidriver/mlan_uap_ioctl.o \
./wifi/wifidriver/mlan_wmm.o \
./wifi/wifidriver/wifi-debug.o \
./wifi/wifidriver/wifi-imu.o \
./wifi/wifidriver/wifi-mem.o \
./wifi/wifidriver/wifi-uap.o \
./wifi/wifidriver/wifi-wps.o \
./wifi/wifidriver/wifi.o \
./wifi/wifidriver/wifi_pwrmgr.o 


# Each subdirectory must supply rules for building sources it contributes
wifi/wifidriver/%.o: ../wifi/wifidriver/%.c wifi/wifidriver/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_RW612ETA2I -DCPU_RW612ETA2I_cm33_nodsp -DLWIP_TIMEVAL_PRIVATE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_NETIF_API=1 -DHTTPSRV_CFG_WEBSOCKET_ENABLED=1 -DHTTPSRV_CFG_DEFAULT_SES_CNT=8 -DSDK_DEBUGCONSOLE_UART -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DMFLASH_FILE_BASEADDR=7340032 -DFSL_OSA_TASK_ENABLE=1 -DOSA_USED -DLWIP_DNS=1 -DLWIP_NETIF_HOSTNAME=1 -DLWIP_IGMP=1 -D_XOPEN_SOURCE=500 -DSO_REUSE=1 -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\source" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\wifidriver" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl\wlcmgr" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\wifidriver\incl" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if\incl" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\certs" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\firmware_dnld" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\sdio_nxp_abs" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\sdio_nxp_abs\incl" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\drivers\freertos" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\osa" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\conn_fwloader\include" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\rw61x" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\script" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\flash\mflash\frdmrw612" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\flash\mflash" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\imu_adapter" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\utilities" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\src\apps\httpsrv" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\drivers" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl\wifidriver" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl\port\net" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\port\net" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl\port\net\hooks" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\port" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\src" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\src\include" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\edgefast_wifi\include" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\flash_config" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\device" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\incl\port\osa" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\wifi_bt_firmware" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\port\osa" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\wifi_bt_module\AzureWave\tx_pwr_limits" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\wifi_bt_module\Murata\tx_pwr_limits" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\wifi_bt_module\u-blox\tx_pwr_limits" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\dhcpd" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\src\include\lwip\apps" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\freertos\freertos-kernel\include" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\lists" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\serial_manager" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\uart" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\port\sys_arch\dynamic" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\CMSIS" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc\internal" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc\internal" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc\internal" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc\internal" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClCore\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslParamIntegrity\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslFlowProtection\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslSecureCounter\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslCPreProcessor\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\compiler" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslDataIntegrity\inc" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\board" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\wifi\template" -I"C:\Embebidosk64\WORKSPACE_REDES\frdmrw612_wifi_webconfig\lwip\template" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-wifi-2f-wifidriver

clean-wifi-2f-wifidriver:
	-$(RM) ./wifi/wifidriver/mlan_11ac.d ./wifi/wifidriver/mlan_11ac.o ./wifi/wifidriver/mlan_11ax.d ./wifi/wifidriver/mlan_11ax.o ./wifi/wifidriver/mlan_11d.d ./wifi/wifidriver/mlan_11d.o ./wifi/wifidriver/mlan_11h.d ./wifi/wifidriver/mlan_11h.o ./wifi/wifidriver/mlan_11k.d ./wifi/wifidriver/mlan_11k.o ./wifi/wifidriver/mlan_11n.d ./wifi/wifidriver/mlan_11n.o ./wifi/wifidriver/mlan_11n_aggr.d ./wifi/wifidriver/mlan_11n_aggr.o ./wifi/wifidriver/mlan_11n_rxreorder.d ./wifi/wifidriver/mlan_11n_rxreorder.o ./wifi/wifidriver/mlan_11v.d ./wifi/wifidriver/mlan_11v.o ./wifi/wifidriver/mlan_action.d ./wifi/wifidriver/mlan_action.o ./wifi/wifidriver/mlan_api.d ./wifi/wifidriver/mlan_api.o ./wifi/wifidriver/mlan_cfp.d ./wifi/wifidriver/mlan_cfp.o ./wifi/wifidriver/mlan_cmdevt.d ./wifi/wifidriver/mlan_cmdevt.o ./wifi/wifidriver/mlan_glue.d ./wifi/wifidriver/mlan_glue.o ./wifi/wifidriver/mlan_init.d ./wifi/wifidriver/mlan_init.o ./wifi/wifidriver/mlan_join.d ./wifi/wifidriver/mlan_join.o ./wifi/wifidriver/mlan_mbo.d ./wifi/wifidriver/mlan_mbo.o ./wifi/wifidriver/mlan_misc.d ./wifi/wifidriver/mlan_misc.o ./wifi/wifidriver/mlan_scan.d ./wifi/wifidriver/mlan_scan.o ./wifi/wifidriver/mlan_shim.d ./wifi/wifidriver/mlan_shim.o ./wifi/wifidriver/mlan_sta_cmd.d ./wifi/wifidriver/mlan_sta_cmd.o ./wifi/wifidriver/mlan_sta_cmdresp.d ./wifi/wifidriver/mlan_sta_cmdresp.o ./wifi/wifidriver/mlan_sta_event.d ./wifi/wifidriver/mlan_sta_event.o ./wifi/wifidriver/mlan_sta_ioctl.d ./wifi/wifidriver/mlan_sta_ioctl.o ./wifi/wifidriver/mlan_sta_rx.d ./wifi/wifidriver/mlan_sta_rx.o ./wifi/wifidriver/mlan_txrx.d ./wifi/wifidriver/mlan_txrx.o ./wifi/wifidriver/mlan_uap_cmdevent.d ./wifi/wifidriver/mlan_uap_cmdevent.o ./wifi/wifidriver/mlan_uap_ioctl.d ./wifi/wifidriver/mlan_uap_ioctl.o ./wifi/wifidriver/mlan_wmm.d ./wifi/wifidriver/mlan_wmm.o ./wifi/wifidriver/wifi-debug.d ./wifi/wifidriver/wifi-debug.o ./wifi/wifidriver/wifi-imu.d ./wifi/wifidriver/wifi-imu.o ./wifi/wifidriver/wifi-mem.d ./wifi/wifidriver/wifi-mem.o ./wifi/wifidriver/wifi-uap.d ./wifi/wifidriver/wifi-uap.o ./wifi/wifidriver/wifi-wps.d ./wifi/wifidriver/wifi-wps.o ./wifi/wifidriver/wifi.d ./wifi/wifidriver/wifi.o ./wifi/wifidriver/wifi_pwrmgr.d ./wifi/wifidriver/wifi_pwrmgr.o

.PHONY: clean-wifi-2f-wifidriver

