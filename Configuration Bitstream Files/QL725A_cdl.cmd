#---------------------------------------------------------------------------------
# Licensed Materials - Property of QuickLogic Corp.
# Copyright (C) 1995 - 2016 QuickLogic Corporation.
# All rights reserved. Use, duplication, or disclosure restricted.
#
# File : QL725A_cdl.cmd
#
# This file contains CDL netlist processing commands specific to device with 
# part name - ql725a aka QL3P1K. 
#--------------------------------------------------------------------------------
# define device part name
define_device_part ql725a 

# define top module
define_top_module psm

# define quad level modules
define_quad_module tlquad -location TL
define_quad_module trquad -location TR
define_quad_module blquad -location BL
define_quad_module brquad -location BR

# define jcb module name
define_jcb_module jcb

# define cells
define_macro_cell macro -type macro -WL 26 -BL 26

define_macro_cell macro_interface -type macro_interface -WL 26 -BL 26

define_macro_cell macro_gclk -type macro_clk_1 -WL 26 -BL 26

define_macro_cell macro_clk -type macro_clk_2 -WL 26 -BL 26

# define bit name prefix
define_WL_prefix wl 
define_BL_prefix bl
define_WL_tst_prefix wl_tst
define_BL_tst_prefix bl_tst

# define WL/BL banks
define_WL_bank 0 -range {0 443} -WL_prefix {wl} -parent psm -rows {0 17}
define_WL_bank 1 -range {0 443} -WL_prefix {wl} -parent psm -rows {18 35}
define_BL_bank 0 -range {0 442} -BL_prefix {bl} -parent psm  -cols {0 16}
define_BL_bank 1 -range {0 442} -BL_prefix {bl} -parent psm  -cols {17 33}

# row/WL information
define_row {0 35} -WL_range {{},{1 26},{27 52},{53 78},{79 104},{105 130},{131 156},{157 182},{183 208},{209 234},{235 261},{262 287},{288 313},{314 339},{340 365},{366 391},{392 417},{418 443},{444 469},{470 495},{496 521},{522 547},{548 573},{574 599},{600 625},{626 651},{652 678},{679 704},{705 730},{731 756},{757 782},{783 808},{809 834},{835 860},{861 886},{}}
define_column {0 33} -BL_range {{1 26},{27 52},{53 78},{79 104},{105 130},{131 156},{157 182},{183 208},{209 234},{235 260},{261 286},{287 312},{313 338},{339 364},{365 390},{391 416},{417 442},{443 468},{469 494},{495 520},{521 546},{547 572},{573 598},{599 624},{625 650},{651 676},{677 702},{703 728},{729 754},{755 780},{781 806},{807 832},{833 858},{859 884}}

# define instance prefix for various types of instances
define_inst_prefix Ipwr_gates -type pwr_gate
define_inst_prefix "I_highway.IM" -type highway
define_inst_prefix "I_street.Isb" -type street