# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_M_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M_AXIS_TDATA_WIDTH}
  ipgui::add_param $IPINST -name "C_LANES" -parent ${Page_0} -widget comboBox
  #Adding Group
  ipgui::add_group $IPINST -name "Clocking" -parent ${Page_0}



}

proc update_PARAM_VALUE.C_LANES { PARAM_VALUE.C_LANES } {
	# Procedure called to update C_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LANES { PARAM_VALUE.C_LANES } {
	# Procedure called to validate C_LANES
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_LANES { MODELPARAM_VALUE.C_LANES PARAM_VALUE.C_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LANES}] ${MODELPARAM_VALUE.C_LANES}
}

