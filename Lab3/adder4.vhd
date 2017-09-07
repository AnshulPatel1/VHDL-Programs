LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY adder4 IS
    PORT(Cin                        :IN STD_LOGIC;
            X,Y                    :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S                        :OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Cout, Overflow        :OUT STD_LOGIC;
            A, B, C, D            :OUT STD_LOGIC;
            Rseg                   :OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            g                        :OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END adder4;
   
ARCHITECTURE Behavior OF adder4 IS
    SIGNAL Sum: STD_LOGIC_VECTOR(4 DOWNTO 0);
        BEGIN
        Process (Cin, X, Y)
        BEGIN
            if(Cin = '0') THEN
       
                Sum <= ('0' & X) + ('0' & Y) + Cin;
                S <= Sum(3 DOWNTO 0);
                Cout <= Sum(4);
                Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3);
       
            else
       
                Sum <= ('0' & X) - (Y);
                S <= Sum(3 DOWNTO 0);
                Cout <= Sum(4);
                Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3);
       
            END IF;
        END Process;
    A <= Not(Sum(2))AND(Sum(1));
    B <= Not(Sum(0)) OR (Sum(2));
    C <= Sum(2) OR Sum(1);
    D <= Not(Sum(2)) OR ((Sum(1))AND NOT(Sum(0)));
   
    Rseg <= "0000001" when Sum = "00000" else
         "1001111" when Sum = "00001" else
         "0010010" when Sum = "00010" else
         "0000110" when Sum = "00011" else
         "1001100" when Sum = "00100" else
         "0100100" when Sum = "00101" else
         "0100000" when Sum = "00110" else
         "0001111" when Sum = "00111" else
         "0000000" when Sum = "01000" else
         "0001100" when Sum = "01001" else
         "0001000" when Sum = "01010" else
         "1100000" when Sum = "01011" else
         "0110001" when Sum = "01100" else
         "1000010" when Sum = "01101" else
         "0110000" when Sum = "01110" else
         "0111000" when Sum = "01111" else
         
         "1001111" when Sum = "11111" else
         "0010010" when Sum = "11110" else
         "0000110" when Sum = "11101" else
         "1001100" when Sum = "11100" else
         "0100100" when Sum = "11011" else
         "0100000" when Sum = "11010" else
         "0001111" when Sum = "11001" else
         "0000000" when Sum = "11000" else
         "0001100" when Sum = "10111" else
         "0001000" when Sum = "10110" else
         "1100000" when Sum = "10101" else
         "0110001" when Sum = "10100" else
         "1000010" when Sum = "10011" else
         "0110000" when Sum = "10010" else
         "0111000" when Sum = "10001";
         
    g<= "1111110" when Sum(4) = '1' else
         "1111111";
   
   
--    A <= Not(Sum(1)) OR (Sum(2)AND Sum(0));
--    B <=(Not(Sum(1))AND(Not Sum(0))) OR (Sum(2)AND Sum(0));
--    C <= Not(Sum(1)) OR Not(Sum(2));
--    D <= (Sum(0)) OR Not(Sum(2));
END Behavior;