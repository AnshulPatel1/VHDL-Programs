LIBRARY ieee ;

USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY compar IS

PORT ( A, B : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
AeqB, AgtB, AltB : OUT STD_LOGIC ) ;

END compar ;

ARCHITECTURE Behavior OF compar IS

 BEGIN
AeqB <= '1' WHEN A = B ELSE '0' ;
AgtB <= '1' WHEN A > B ELSE '0' ;
AltB <= '1' WHEN A < B ELSE '0' ;

END Behavior ;