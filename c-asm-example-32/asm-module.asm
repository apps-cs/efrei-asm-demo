#***************************************************************************
#
# Program for education in subject "APPS" for EFREI
# petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
#
# Example of linking of module in C and module in Assembly
#
#***************************************************************************
    .intel_syntax noprefix

    .data

    # public variable
    .global  g_module_pub_x

    # local variables
g_module_pub_x:     int     0
g_module_loc_x:     int     0

#***************************************************************************

    .text

    # public label (function)
    .global  tool_fun_pub

tool_fun_pub:
    enter 0,0

    mov     dword ptr [ g_main_pub_x ], 40
    #mov     dword ptr [ g_main_loc_x ],  30     # impossible
    mov     dword ptr [ g_module_pub_x ], 20
    mov     dword ptr [ g_module_loc_x ], 10

    leave
    ret

tool_fun_loc:
    enter 0,0

    mov     dword ptr [ g_main_pub_x ], 100
    #mov     dword ptr [ g_main_loc_x ], 200     # impossible
    mov     dword ptr [ g_module_pub_x ], 300
    mov     dword ptr [ g_module_loc_x ], 400

    leave
    ret

