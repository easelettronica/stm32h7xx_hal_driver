#Description: CMSIS Include For Cortex-M, ARMv8-M, ARMv8.1-M; user_visible: True
include_guard(GLOBAL)
message("stm32h7xx_adc_hal_driver component is included.")

file(GLOB HAL_SRC_FILES    
    "${CMAKE_CURRENT_LIST_DIR}/Src/stm32h7xx_hal_adc.c"
    "${CMAKE_CURRENT_LIST_DIR}/Src/stm32h7xx_hal_adc_ex.c"
)

target_sources(${PROJECT_NAME} PRIVATE
	${HAL_SRC_FILES}
)

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)

