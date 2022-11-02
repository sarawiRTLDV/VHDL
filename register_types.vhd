
library ieee;                                                                                                                                                       library ieee;
use ieee.std_logic_1164.all;

-- Package Declaration Section
package register_types is
	
	type name_t is (NONE, M, V, X, OP0, OP0H, OP0L, OP1, OP1H, OP1L, SP, FP, GP, IP, AP);
		
end package register_types;