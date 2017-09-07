LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sevseg IS
PORT ( bcd : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
		-- R1, R2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
       leds1,leds2 : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;

END sevseg ;

ARCHITECTURE Behavior OF sevseg IS
signal R1, R2 : STD_LOGIC_VECTOR(3 DOWNTO 0); 

BEGIN
PROCESS ( bcd )

BEGIN

R1 <= bcd (7 DOWNTO 4); 
R2 <= bcd (3 DOWNTO 0); 

CASE R1 IS       -- abcdefg

WHEN "0000" =>leds1 <="0000001" ;
WHEN "0001" =>leds1 <="1001111" ;
WHEN "0010" =>leds1 <="0010010" ;
WHEN "0011" =>leds1 <="0000110" ;
WHEN "0100" =>leds1 <="1001100" ;
WHEN "0101" =>leds1 <="0100100" ;
WHEN "0110" =>leds1 <="0100000" ;
WHEN "0111" =>leds1 <="0001111" ;
WHEN "1000" =>leds1 <="0000000" ;
WHEN "1001" =>leds1 <="0001100" ;
WHEN "1111" =>leds1 <="0111000" ; 
WHEN "1010" =>leds1 <="0001000" ;
WHEN "1011" =>leds1 <="1100000" ;
WHEN "1100" =>leds1 <="0110001" ;
WHEN "1101" =>leds1 <="1000010" ;
WHEN "1110" =>leds1 <="0110000" ;
WHEN OTHERS =>leds1 <="-------" ;


END CASE ;

CASE R2 IS 

WHEN "0000" =>leds2 <="0000001" ;
WHEN "0001" =>leds2 <="1001111" ;
WHEN "0010" =>leds2 <="0010010" ;
WHEN "0011" =>leds2 <="0000110" ;
WHEN "0100" =>leds2 <="1001100" ;
WHEN "0101" =>leds2 <="0100100" ;
WHEN "0110" =>leds2 <="0100000" ;
WHEN "0111" =>leds2 <="0001111" ;
WHEN "1000" =>leds2 <="0000000" ;
WHEN "1001" =>leds2 <="0001100" ;
WHEN "1111" =>leds2 <="0111000" ; 
WHEN "1010" =>leds2 <="0001000" ;
WHEN "1011" =>leds2 <="1100000" ;
WHEN "1100" =>leds2 <="0110001" ;
WHEN "1101" =>leds2 <="1000010" ;
WHEN "1110" =>leds2 <="0110000" ;
WHEN OTHERS =>leds2 <="-------" ;

END CASE; 

END PROCESS ;
END Behavior ;