LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fsm_debounced IS
	PORT (osc,resetn,w,x: IN STD_LOGIC;
	u                    :OUT STD_LOGIC_VECTOR (0 TO 6));
END fsm_debounced;

ARCHITECTURE a OF fsm_debounced IS
	TYPE STATE IS (s0,s1,s2,s3,s4,s5,s6,s7);
	SIGNAL y,yfsm :STATE;
	SIGNAL z : STD_LOGIC;
	SIGNAL count: INTEGER RANGE 0 TO 1638300;
BEGIN 

-- DEBOUNCER

	PROCESS (resetn,osc)
	BEGIN 
		IF resetn = '0' THEN
			count <=0;
			y <=s0;
		ELSIF (osc 'EVENT AND osc= '1') THEN
			count  <= count +1;
			IF count = 1638300 THEN
				CASE y IS
					WHEN s0 => IF w= '0' THEN
									y<= s1;
									ELSIF w= '1' THEN
									y<=s0;
									END IF;
					WHEN s1 =>IF w= '0' THEN
									y<= s2;
									ELSIF w= '1' THEN
									y<=s0;
									END IF;
					WHEN s2 =>IF w= '0' THEN
									y<= s3;
									ELSIF w= '1' THEN
									y<=s0;
									END IF;
					WHEN s3 =>IF w= '0' THEN
									y<= s4;
									ELSIF w= '1' THEN
									y<=s0;
									END IF;
					WHEN s4 =>IF w= '0' THEN
									y<= s4;
									ELSIF w= '1' THEN
									y<=s5;
									END IF;
					WHEN s5 =>IF w= '0' THEN
									y<= s4;
									ELSIF w= '1' THEN
									y<=s6;
									END IF;
					WHEN s6 =>IF w= '0' THEN
									y<= s4;
									ELSIF w= '1' THEN
									y<=s7;
									END IF;
					WHEN s7 =>IF w= '0' THEN
									y<= s4;
									ELSIF w= '1' THEN
									y<=s0;
									END IF;
				END CASE;
			END IF;
		END IF;
END PROCESS;

WITH y SELECT 
	z <= '1' WHEN s4,
		  '1' WHEN s5,
		  '1' WHEN s6,
		  '1' WHEN s7,
		  '0' WHEN OTHERS;
	
	
	PROCESS (resetn,z)
	BEGIN 
		IF resetn = '0' THEN
			yfsm <=s0;
			
		ELSIF (z 'EVENT AND z= '1') THEN
		
			CASE yfsm IS
			
				WHEN s0 => IF x= '0' THEN 
							  yfsm<= s4;
							  ELSIF x= '1' 
							  THEN yfsm<=s1;
							  END IF;
							  
				WHEN s1 => IF x = '0' THEN
							  yfsm <= s3; 
							  ELSIF x = '1' 
							  THEN yfsm <= s2; 
							  END IF; 
							  
				WHEN s2 => IF x = '0' THEN
							  yfsm <= s7; 
							  ELSIF x = '1' 
							  THEN yfsm <= s3; 
							  END IF; 
							  
				WHEN s3 => IF x = '0' THEN
							  yfsm <= s3; 
							  ELSIF x = '1' 
							  THEN yfsm <= s5; 
							  END IF; 
							  
				WHEN s4 => IF x = '0' THEN
							  yfsm <= s5; 
							  ELSIF x = '1' 
							  THEN yfsm <= s3; 
							  END IF; 

				WHEN s5 => IF x = '0' THEN
							  yfsm <= s2; 
							  ELSIF x = '1' 
							  THEN yfsm <= s6; 
							  END IF; 
							  
				WHEN s6 => IF x = '0' THEN
							  yfsm <= s7; 
							  ELSIF x = '1' 
							  THEN yfsm <= s6; 
							  END IF; 
							  
				WHEN s7 => IF x = '0' THEN
							  yfsm <= s7; 
							  ELSIF x = '1' 
							  THEN yfsm <= s7; 
							  END IF; 
							  
			   END CASE; 
				END IF; 
				END PROCESS; 
				
PROCESS(yfsm)
   BEGIN
      CASE yfsm IS            --  abcdefg
         WHEN s0 => u <= "0000001";
         WHEN s1 => u <= "1001111";
         WHEN s2 => u <= "0010010";                                                               
         WHEN s3 => u <= "0000110";
         WHEN s4 => u <= "1001100";
         WHEN s5 => u <= "0100100";
         WHEN s6 => u <= "0100000";
         WHEN s7 => u <= "0001111";
         
         WHEN OTHERS => u <= "-------";
      END CASE;
   END PROCESS;

end a;
		  
		  