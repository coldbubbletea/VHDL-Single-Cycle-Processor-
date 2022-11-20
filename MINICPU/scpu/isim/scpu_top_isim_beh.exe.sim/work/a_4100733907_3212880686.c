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
static const char *ng0 = "C:/MINICPU/scpu/signede.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4100733907_3212880686_p_0(char *t0)
{
    char t9[16];
    char t12[16];
    char t27[16];
    char t30[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned char t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB7:    t28 = (t0 + 4284);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 0;
    t32 = (t31 + 4U);
    *((int *)t32) = 31;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t33 = (31 - 0);
    t34 = (t33 * 1);
    t34 = (t34 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t34;
    t32 = (t0 + 1032U);
    t35 = *((char **)t32);
    t32 = (t0 + 4196U);
    t36 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t27, t28, t30, t35, t32);
    t37 = (t27 + 12U);
    t34 = *((unsigned int *)t37);
    t38 = (1U * t34);
    t39 = (32U != t38);
    if (t39 == 1)
        goto LAB9;

LAB10:    t40 = (t0 + 2752);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t36, 32U);
    xsi_driver_first_trans_fast_port(t40);

LAB2:    t45 = (t0 + 2672);
    *((int *)t45) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 4252);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 31;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (31 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t0 + 1032U);
    t17 = *((char **)t14);
    t14 = (t0 + 4196U);
    t18 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t10, t12, t17, t14);
    t19 = (t9 + 12U);
    t16 = *((unsigned int *)t19);
    t20 = (1U * t16);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 2752);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 32U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t20, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(32U, t38, 0);
    goto LAB10;

}


extern void work_a_4100733907_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4100733907_3212880686_p_0};
	xsi_register_didat("work_a_4100733907_3212880686", "isim/scpu_top_isim_beh.exe.sim/work/a_4100733907_3212880686.didat");
	xsi_register_executes(pe);
}
