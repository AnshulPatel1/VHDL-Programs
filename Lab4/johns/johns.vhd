LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY johns IS
PORT (Clrn, E, Clkn : IN STD_LOGIC;
W : OUT STD_LOGIC_VECTOR (0 TO 3);
Q :OUT STD_LOGIC_VECTOR (0 TO 2));

END johns;
ARCHITECTURE Behavior OF johns IS
signal Qreg: STD_LOGIC_VECTOR (0 TO 2);

BEGIN
PROCESS (Clrn, Clkn)

BEGIN

IF Clrn = '0' THEN
     Qreg <= "000";
ELSIF (Clkn'EVENT AND Clkn = '0') THEN

IF E = '1' THEN
Qreg(0) <= NOT Qreg(2);
Qreg(1) <= Qreg(0);
Qreg(2) <= Qreg(1);
ELSE
Qreg <= Qreg;
END IF;
END IF;

CASE Qreg IS
WHEN "000" => W <= "1000";
WHEN "100" => W <= "1110";
WHEN "110" => W <= "1110";
WHEN "111" => W <= "0011";
WHEN "011" => W <= "0000";
WHEN "001" => W <= "0011";
WHEN OTHERS => W <= "----";

END CASE;
END PROCESS;
Q <= Qreg;
END Behavior;

