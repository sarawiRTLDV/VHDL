library ieee;                                                                                                                                                       library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library work;
use work.microaddr_types.all;
use work.register_types.all;

entity microaddress_counter is 
port(
		clk, rst, zflag: in std_logic;
		M: in unsigned(7 downto 0);
		cmd: in cmd_t;
		load_addr: in std_logic_vector(10 downto 0);
		addr: buffer std_logic_vector(10 downto 0) :=(others => '0')
		
);

end entity;

architecture arch_of_micaddr_counter of microaddress_counter is 

type vec is array(0 to 3) of std_logic_vector(10 downto 0);
type table256  is array(0 to 255) of std_logic_vector(10 downto 0);


signal next_addr: std_logic_vector(10 downto 0);
signal call_stack:vec;
signal next_call_stack: vec := call_stack;
signal call_stack_ptr: std_logic_vector(1 downto 0);
signal next_call_stack_ptr: std_logic_vector(1 downto 0) := call_stack_ptr;
signal opjump_table: table256 := (others => "00000000000");

begin
	
	opjump_table(1) <= "01101011011";
	opjump_table(2) <= "00000010010";
	
	
	process(zflag,M,cmd,load_addr, rst, clk)
	begin
		
		if(rst = '0') then
			next_addr <= "00000000000";
			next_call_stack_ptr <= "00";
		else if(cmd = NONE) then
			next_addr <= addr;
		else if(cmd = INC) then
			next_addr <=  std_logic_vector(unsigned(addr) + to_unsigned(1, 11));
		else if(cmd = RET) then
			next_addr <= call_stack(to_integer(unsigned(call_stack_ptr) - to_unsigned(1,11)));
			next_call_stack_ptr <= std_logic_vector(unsigned(call_stack_ptr) + to_unsigned(1, 2));
		else if(cmd = OPJMP) then 
			next_addr <= opjump_table(to_integer(M));
		else if(cmd = JMP) then 
			next_addr <= load_addr;
		else if(cmd = CALL) then
			next_addr <= load_addr;
			next_call_stack_ptr <= std_logic_vector(unsigned(call_stack_ptr) + to_unsigned(1, 2));
			next_call_stack(to_integer(unsigned(call_stack_ptr))) <= std_logic_vector(unsigned(addr) + to_unsigned(1, 2));
		else if((cmd = JNZ)) then
			if(zflag /= '0') then
				next_addr <= load_addr;
			else next_addr <= std_logic_vector(unsigned(addr) + to_unsigned(1, 11));
			end if;
		else 
			next_addr <= addr;
		end if;
		end if;
		end if;
		end if;
		end if;
		end if;
		end if;
		end if;
		
		if(rising_edge(clk)) then
			
			addr <= next_addr;
			call_stack_ptr <= next_call_stack_ptr;
			call_stack <= next_call_stack;
		
		end if;
		
	
	end process;
						 
	
--	process(rst, clk)
--	begin
--	 wait until 
--	 if(rising_edge(clk)) then
--			
--			addr <= next_addr;
--			call_stack_ptr <= next_call_stack_ptr;
--			call_stack <= next_call_stack;
--		
--		end if;
--		
--	end process;
--	


end architecture;