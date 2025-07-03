################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/core/altcp.c \
../lwip/src/core/altcp_alloc.c \
../lwip/src/core/altcp_tcp.c \
../lwip/src/core/def.c \
../lwip/src/core/dns.c \
../lwip/src/core/inet_chksum.c \
../lwip/src/core/init.c \
../lwip/src/core/ip.c \
../lwip/src/core/mem.c \
../lwip/src/core/memp.c \
../lwip/src/core/netif.c \
../lwip/src/core/pbuf.c \
../lwip/src/core/raw.c \
../lwip/src/core/stats.c \
../lwip/src/core/sys.c \
../lwip/src/core/tcp.c \
../lwip/src/core/tcp_in.c \
../lwip/src/core/tcp_out.c \
../lwip/src/core/timeouts.c \
../lwip/src/core/udp.c 

C_DEPS += \
./lwip/src/core/altcp.d \
./lwip/src/core/altcp_alloc.d \
./lwip/src/core/altcp_tcp.d \
./lwip/src/core/def.d \
./lwip/src/core/dns.d \
./lwip/src/core/inet_chksum.d \
./lwip/src/core/init.d \
./lwip/src/core/ip.d \
./lwip/src/core/mem.d \
./lwip/src/core/memp.d \
./lwip/src/core/netif.d \
./lwip/src/core/pbuf.d \
./lwip/src/core/raw.d \
./lwip/src/core/stats.d \
./lwip/src/core/sys.d \
./lwip/src/core/tcp.d \
./lwip/src/core/tcp_in.d \
./lwip/src/core/tcp_out.d \
./lwip/src/core/timeouts.d \
./lwip/src/core/udp.d 

OBJS += \
./lwip/src/core/altcp.o \
./lwip/src/core/altcp_alloc.o \
./lwip/src/core/altcp_tcp.o \
./lwip/src/core/def.o \
./lwip/src/core/dns.o \
./lwip/src/core/inet_chksum.o \
./lwip/src/core/init.o \
./lwip/src/core/ip.o \
./lwip/src/core/mem.o \
./lwip/src/core/memp.o \
./lwip/src/core/netif.o \
./lwip/src/core/pbuf.o \
./lwip/src/core/raw.o \
./lwip/src/core/stats.o \
./lwip/src/core/sys.o \
./lwip/src/core/tcp.o \
./lwip/src/core/tcp_in.o \
./lwip/src/core/tcp_out.o \
./lwip/src/core/timeouts.o \
./lwip/src/core/udp.o 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/%.o: ../lwip/src/core/%.c lwip/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCPU_RW612ETA2I -DCPU_RW612ETA2I_cm33_nodsp -DLWIP_TIMEVAL_PRIVATE=0 -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_NETIF_API=1 -DHTTPSRV_CFG_WEBSOCKET_ENABLED=1 -DHTTPSRV_CFG_DEFAULT_SES_CNT=8 -DSDK_DEBUGCONSOLE_UART -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DMFLASH_FILE_BASEADDR=7340032 -DFSL_OSA_TASK_ENABLE=1 -DOSA_USED -DLWIP_DNS=1 -DLWIP_NETIF_HOSTNAME=1 -DLWIP_IGMP=1 -D_XOPEN_SOURCE=500 -DSO_REUSE=1 -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\source" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\wifidriver" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl\wlcmgr" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\wifidriver\incl" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\wifidriver\wpa_supp_if\incl" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\certs" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\firmware_dnld" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\sdio_nxp_abs" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\sdio_nxp_abs\incl" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\drivers\freertos" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\osa" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\conn_fwloader\include" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\rw61x" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\conn_fwloader\fw_bin\script" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\flash\mflash\frdmrw612" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\flash\mflash" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\imu_adapter" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\utilities" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\src\apps\httpsrv" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\drivers" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl\wifidriver" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl\port\net" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\port\net" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl\port\net\hooks" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\port" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\src" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\src\include" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\edgefast_wifi\include" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\flash_config" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\device" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\incl\port\osa" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\wifi_bt_firmware" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\port\osa" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\wifi_bt_module\AzureWave\tx_pwr_limits" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\wifi_bt_module\Murata\tx_pwr_limits" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\wifi_bt_module\u-blox\tx_pwr_limits" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\dhcpd" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\src\include\lwip\apps" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\freertos\freertos-kernel\include" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\lists" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\serial_manager" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\uart" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\port\sys_arch\dynamic" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\CMSIS" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClEls\inc\internal" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClMemory\inc\internal" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslMemory\inc\internal" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\platforms\rw61x\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClBuffer\inc\internal" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxClCore\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslParamIntegrity\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslFlowProtection\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslSecureCounter\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslCPreProcessor\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\compiler" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\component\els_pkc\src\comps\mcuxCsslDataIntegrity\inc" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\board" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\wifi\template" -I"D:\MCUXpresso_Workspace\frdmrw612_wifi_webconfig\lwip\template" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lwip-2f-src-2f-core

clean-lwip-2f-src-2f-core:
	-$(RM) ./lwip/src/core/altcp.d ./lwip/src/core/altcp.o ./lwip/src/core/altcp_alloc.d ./lwip/src/core/altcp_alloc.o ./lwip/src/core/altcp_tcp.d ./lwip/src/core/altcp_tcp.o ./lwip/src/core/def.d ./lwip/src/core/def.o ./lwip/src/core/dns.d ./lwip/src/core/dns.o ./lwip/src/core/inet_chksum.d ./lwip/src/core/inet_chksum.o ./lwip/src/core/init.d ./lwip/src/core/init.o ./lwip/src/core/ip.d ./lwip/src/core/ip.o ./lwip/src/core/mem.d ./lwip/src/core/mem.o ./lwip/src/core/memp.d ./lwip/src/core/memp.o ./lwip/src/core/netif.d ./lwip/src/core/netif.o ./lwip/src/core/pbuf.d ./lwip/src/core/pbuf.o ./lwip/src/core/raw.d ./lwip/src/core/raw.o ./lwip/src/core/stats.d ./lwip/src/core/stats.o ./lwip/src/core/sys.d ./lwip/src/core/sys.o ./lwip/src/core/tcp.d ./lwip/src/core/tcp.o ./lwip/src/core/tcp_in.d ./lwip/src/core/tcp_in.o ./lwip/src/core/tcp_out.d ./lwip/src/core/tcp_out.o ./lwip/src/core/timeouts.d ./lwip/src/core/timeouts.o ./lwip/src/core/udp.d ./lwip/src/core/udp.o

.PHONY: clean-lwip-2f-src-2f-core

