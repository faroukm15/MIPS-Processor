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
static const char *ng0 = "D:/Xilinix/Projects/SingleBitALU/mux41.vhd";



static void work_a_1553815316_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned char t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned char t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned char t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned char t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned char t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (3 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5092);
    t8 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t8 = 0;

LAB7:    if (t8 != 0)
        goto LAB3;

LAB4:    t19 = (t0 + 1672U);
    t20 = *((char **)t19);
    t21 = (3 - 1);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t19 = (t20 + t23);
    t24 = (t0 + 5094);
    t26 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t26 = 0;

LAB15:    if (t26 != 0)
        goto LAB11;

LAB12:    t37 = (t0 + 1672U);
    t38 = *((char **)t37);
    t39 = (3 - 1);
    t40 = (t39 * 1U);
    t41 = (0 + t40);
    t37 = (t38 + t41);
    t42 = (t0 + 5096);
    t44 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t44 = 0;

LAB23:    if (t44 != 0)
        goto LAB19;

LAB20:    t55 = (t0 + 1672U);
    t56 = *((char **)t55);
    t57 = (3 - 1);
    t58 = (t57 * 1U);
    t59 = (0 + t58);
    t55 = (t56 + t59);
    t60 = (t0 + 5098);
    t62 = 1;
    if (2U == 2U)
        goto LAB29;

LAB30:    t62 = 0;

LAB31:    if (t62 != 0)
        goto LAB27;

LAB28:
LAB2:    t73 = (t0 + 3312);
    *((int *)t73) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t12 = (t0 + 3392);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t9 = 0;

LAB8:    if (t9 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB6;

LAB10:    t9 = (t9 + 1);
    goto LAB8;

LAB11:    t30 = (t0 + 1192U);
    t31 = *((char **)t30);
    t32 = *((unsigned char *)t31);
    t30 = (t0 + 3392);
    t33 = (t30 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    *((unsigned char *)t36) = t32;
    xsi_driver_first_trans_fast_port(t30);
    goto LAB2;

LAB13:    t27 = 0;

LAB16:    if (t27 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t28 = (t19 + t27);
    t29 = (t24 + t27);
    if (*((unsigned char *)t28) != *((unsigned char *)t29))
        goto LAB14;

LAB18:    t27 = (t27 + 1);
    goto LAB16;

LAB19:    t48 = (t0 + 1352U);
    t49 = *((char **)t48);
    t50 = *((unsigned char *)t49);
    t48 = (t0 + 3392);
    t51 = (t48 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    *((unsigned char *)t54) = t50;
    xsi_driver_first_trans_fast_port(t48);
    goto LAB2;

LAB21:    t45 = 0;

LAB24:    if (t45 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t46 = (t37 + t45);
    t47 = (t42 + t45);
    if (*((unsigned char *)t46) != *((unsigned char *)t47))
        goto LAB22;

LAB26:    t45 = (t45 + 1);
    goto LAB24;

LAB27:    t66 = (t0 + 1512U);
    t67 = *((char **)t66);
    t68 = *((unsigned char *)t67);
    t66 = (t0 + 3392);
    t69 = (t66 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    *((unsigned char *)t72) = t68;
    xsi_driver_first_trans_fast_port(t66);
    goto LAB2;

LAB29:    t63 = 0;

LAB32:    if (t63 < 2U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t64 = (t55 + t63);
    t65 = (t60 + t63);
    if (*((unsigned char *)t64) != *((unsigned char *)t65))
        goto LAB30;

LAB34:    t63 = (t63 + 1);
    goto LAB32;

}


extern void work_a_1553815316_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1553815316_3212880686_p_0};
	xsi_register_didat("work_a_1553815316_3212880686", "isim/RobotTest_isim_beh.exe.sim/work/a_1553815316_3212880686.didat");
	xsi_register_executes(pe);
}
