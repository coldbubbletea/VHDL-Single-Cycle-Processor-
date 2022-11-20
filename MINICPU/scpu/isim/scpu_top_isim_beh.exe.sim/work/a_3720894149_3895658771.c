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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/MINICPU/scpu/dmem.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);


static void work_a_3720894149_3895658771_p_0(char *t0)
{
    char t35[16];
    char t37[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t36;

LAB0:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1352U);
    t10 = *((char **)t4);
    t4 = (t0 + 6148U);
    t11 = (t0 + 2408U);
    t12 = *((char **)t11);
    t13 = *((int *)t12);
    t14 = (t13 + 1);
    t15 = (t14 * 4);
    t16 = (t15 - 4);
    t17 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t10, t4, t16);
    if (t17 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 1352U);
    t18 = *((char **)t11);
    t11 = (t0 + 6148U);
    t19 = (t0 + 2288U);
    t20 = *((char **)t19);
    t21 = *((int *)t20);
    t22 = (t21 * 4);
    t23 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t18, t11, t22);
    t9 = t23;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t32 = (31 - 1);
    t33 = (t32 * 1U);
    t34 = (0 + t33);
    t2 = (t4 + t34);
    t5 = (t35 + 0U);
    t10 = (t5 + 0U);
    *((int *)t10) = 1;
    t10 = (t5 + 4U);
    *((int *)t10) = 0;
    t10 = (t5 + 8U);
    *((int *)t10) = -1;
    t13 = (0 - 1);
    t36 = (t13 * -1);
    t36 = (t36 + 1);
    t10 = (t5 + 12U);
    *((unsigned int *)t10) = t36;
    t10 = (t0 + 530624);
    t12 = (t37 + 0U);
    t18 = (t12 + 0U);
    *((int *)t18) = 0;
    t18 = (t12 + 4U);
    *((int *)t18) = 1;
    t18 = (t12 + 8U);
    *((int *)t18) = 1;
    t14 = (1 - 0);
    t36 = (t14 * 1);
    t36 = (t36 + 1);
    t18 = (t12 + 12U);
    *((unsigned int *)t18) = t36;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t35, t10, t37);
    if (t3 == 1)
        goto LAB25;

LAB26:    t1 = (unsigned char)0;

LAB27:    if (t1 != 0)
        goto LAB22;

LAB24:
LAB23:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t32 = (31 - 31);
    t33 = (t32 * 1U);
    t34 = (0 + t33);
    t2 = (t4 + t34);
    t5 = (t35 + 0U);
    t10 = (t5 + 0U);
    *((int *)t10) = 31;
    t10 = (t5 + 4U);
    *((int *)t10) = 2;
    t10 = (t5 + 8U);
    *((int *)t10) = -1;
    t13 = (2 - 31);
    t36 = (t13 * -1);
    t36 = (t36 + 1);
    t10 = (t5 + 12U);
    *((unsigned int *)t10) = t36;
    t14 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t2, t35);
    t10 = (t0 + 2648U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    *((int *)t10) = t14;
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB33;

LAB35:
LAB34:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(55, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t4 = t2;
    memset(t4, (unsigned char)4, 32U);
    t5 = (t0 + 4032);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    memcpy(t18, t2, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB37:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(38, ng0);
    if ((unsigned char)0 == 0)
        goto LAB20;

LAB21:    goto LAB9;

LAB11:    t19 = (t0 + 1832U);
    t25 = *((char **)t19);
    t26 = *((unsigned char *)t25);
    t27 = (t26 == (unsigned char)3);
    if (t27 == 1)
        goto LAB17;

LAB18:    t19 = (t0 + 1992U);
    t28 = *((char **)t19);
    t29 = *((unsigned char *)t28);
    t30 = (t29 == (unsigned char)3);
    t24 = t30;

LAB19:    t8 = t24;
    goto LAB13;

LAB14:    t9 = (unsigned char)1;
    goto LAB16;

LAB17:    t24 = (unsigned char)1;
    goto LAB19;

LAB20:    t19 = (t0 + 530604);
    xsi_report(t19, 19U, (unsigned char)3);
    goto LAB21;

LAB22:    xsi_set_current_line(43, ng0);
    if ((unsigned char)0 == 0)
        goto LAB31;

LAB32:    goto LAB23;

LAB25:    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t7 = *((unsigned char *)t19);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB28;

LAB29:    t18 = (t0 + 1992U);
    t20 = *((char **)t18);
    t9 = *((unsigned char *)t20);
    t17 = (t9 == (unsigned char)3);
    t6 = t17;

LAB30:    t1 = t6;
    goto LAB27;

LAB28:    t6 = (unsigned char)1;
    goto LAB30;

LAB31:    t18 = (t0 + 530626);
    xsi_report(t18, 19U, (unsigned char)3);
    goto LAB32;

LAB33:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 2528U);
    t10 = *((char **)t2);
    t2 = (t0 + 2648U);
    t11 = *((char **)t2);
    t13 = *((int *)t11);
    t14 = (t13 - 0);
    t32 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 16383, 1, t13);
    t33 = (32U * t32);
    t34 = (0 + t33);
    t2 = (t10 + t34);
    memcpy(t2, t5, 32U);
    goto LAB34;

LAB36:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2528U);
    t5 = *((char **)t2);
    t2 = (t0 + 2648U);
    t10 = *((char **)t2);
    t13 = *((int *)t10);
    t14 = (t13 - 0);
    t32 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 16383, 1, t13);
    t33 = (32U * t32);
    t34 = (0 + t33);
    t2 = (t5 + t34);
    t11 = (t0 + 4032);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t2, 32U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB37;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_3720894149_3895658771_init()
{
	static char *pe[] = {(void *)work_a_3720894149_3895658771_p_0};
	xsi_register_didat("work_a_3720894149_3895658771", "isim/scpu_top_isim_beh.exe.sim/work/a_3720894149_3895658771.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 5);
}
