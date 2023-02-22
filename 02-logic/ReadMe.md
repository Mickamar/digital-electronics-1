# Lab 2: Martin Mička

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](pictures/map1.jpg)

   Less than:

   ![K-maps](pictures/map2.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](pictures/equations.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **6 - 0110, 2 - 0010**

```vhdl
     p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- First test case ...
        s_b <= "0110"; s_a <= "0010"; wait for 100 ns;
        -- ... and its expected outputs
        assert (( s_B_greater_A = '1') and
                ( s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If true, then do not report anything
        -- If false, then report the following error
        report "Input combination b=0110, a=0010 FAILED" severity error;
        
        -- Second test case ...
        s_b <= "0010"; s_a <= "0010"; wait for 100 ns;
        -- ... and its expected outputs
        assert (( s_B_greater_A = '0') and
                ( s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If true, then do not report anything
        -- If false, then report the following error
        report "Input combination b=0010, a=0010 FAILED" severity error;
        -- Intentional mistake
                
        -- Third test case ...
        s_b <= "0000"; s_a <= "0000"; wait for 100 ns;
        -- ... and its expected outputs
        assert (( s_B_greater_A = '0') and
                ( s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If true, then do not report anything
        -- If false, then report the following error
        report "Input combination b=0000, a=0000 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
