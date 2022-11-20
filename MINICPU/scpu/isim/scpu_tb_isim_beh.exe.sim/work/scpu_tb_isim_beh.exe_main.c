/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_3532752444_3212880686_init();
    work_a_2541498019_3212880686_init();
    work_a_3633123720_3212880686_init();
    work_a_1307272399_3212880686_init();
    work_a_3907639822_3212880686_init();
    work_a_1425431856_3212880686_init();
    work_a_4100733907_3212880686_init();
    work_a_2091371681_3212880686_init();
    work_a_3115613711_3212880686_init();
    work_a_0784078080_3212880686_init();
    work_a_1304790759_3212880686_init();
    work_a_0119146278_3212880686_init();
    work_a_3471577364_3212880686_init();
    work_a_1389525466_3212880686_init();
    work_a_3997978424_3212880686_init();
    work_a_4077581186_3212880686_init();
    work_a_3452694053_3212880686_init();
    work_a_0564253557_3212880686_init();
    work_a_0289625713_0427617860_init();
    work_a_3720894149_3895658771_init();
    work_a_0739323090_3212880686_init();
    work_a_3162238118_1637741553_init();


    xsi_register_tops("work_a_3162238118_1637741553");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
