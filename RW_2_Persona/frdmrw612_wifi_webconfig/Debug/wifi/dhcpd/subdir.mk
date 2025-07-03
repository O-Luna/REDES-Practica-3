################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wifi/dhcpd/dhcp-server-main.c \
../wifi/dhcpd/dhcp-server.c \
../wifi/dhcpd/dns-server.c 

C_DEPS += \
./wifi/dhcpd/dhcp-server-main.d \
./wifi/dhcpd/dhcp-server.d \
./wifi/dhcpd/dns-server.d 

OBJS += \
./wifi/dhcpd/dhcp-server-main.o \
./wifi/dhcpd/dhcp-server.o \
./wifi/dhcpd/dns-server.o 


# Each subdirectory must supply rules for building sources it contributes
wifi/dhcpd/%.o: ../wifi/dhcpd/%.c wifi/dhcpd/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_RW612ETA2I -DCPU_RW612ETA2I_cm33_nodsp -DLWIP_TIMEVAL_PRIVATE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_NETIF_API=1 -DHTTPSRV_CFG_WEBSOCKET_ENABLED=1 -DHTTPSRV_CFG_DEFAULT_SES_CNT=8 -DSDK_DEBUGCONSOLE_UART -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DMFLASH_FILE_BASEADDR=7340032 -DFSL_OSA_TASK_ENABLE=1 -DOSA_USED -DLWIP_DNS=1 -DLWIP_NETIF_HOSTNAME=1 -DLWIP_IGMP=1 -D_XOPEN_SOURCE=500 -DSO_REUSE=1 -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -I"C:\Enr\redes\frdmrw612_wifi_webconfig\source" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\wifidriver" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl\wlcmgr" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\wifidriver\incl" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if\incl" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\certs" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\drivers\freertos" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\osa" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\conn_fwloader\include" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\rw61x" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\script" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\flash\mflash\frdmrw612" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\flash\mflash" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\imu_adapter" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\utilities" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\src\apps\httpsrv" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\drivers" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl\wifidriver" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl\port\net" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\port\net" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl\port\net\hooks" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\port" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\src" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\src\include" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\edgefast_wifi\include" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\flash_config" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\device" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\incl\port\osa" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\wifi_bt_firmware" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\port\osa" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\wifi_bt_module\AzureWave\tx_pwr_limits" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\wifi_bt_module\Murata\tx_pwr_limits" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\wifi_bt_module\u-blox\tx_pwr_limits" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\wifi\dhcpd" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\src\include\lwip\apps" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\freertos\freertos-kernel\include" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\lists" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\serial_manager" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\uart" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\lwip\port\sys_arch\dynamic" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\CMSIS" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc\internal" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc\internal" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc\internal" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc\internal" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClCore\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslParamIntegrity\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslFlowProtection\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslSecureCounter\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslCPreProcessor\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\compiler" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslDataIntegrity\inc" -I"C:\Enr\redes\frdmrw612_wifi_webconfig\board" -I"C:\Enr\redes\frdmrw612_wifi_webconfig" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-wifi-2f-dhcpd

clean-wifi-2f-dhcpd:
	-$(RM) ./wifi/dhcpd/dhcp-server-main.d ./wifi/dhcpd/dhcp-server-main.o ./wifi/dhcpd/dhcp-server.d ./wifi/dhcpd/dhcp-server.o ./wifi/dhcpd/dns-server.d ./wifi/dhcpd/dns-server.o

.PHONY: clean-wifi-2f-dhcpd

