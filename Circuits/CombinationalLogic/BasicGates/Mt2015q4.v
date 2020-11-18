module a_module (input x, input y, output z);
    assign z = (x^y)&x;
endmodule
module b_module ( input x, input y, output z );
    assign z = !(x^y);
endmodule

module top_module (input x, input y, output z);
	wire z1, z2, z3, z4;
    a_module ia1(x,y,z1);
    b_module ib1(x,y,z2);
    a_module ia2(x,y,z3);
    b_module ib2(x,y,z4);
    assign z = (z1|z2)^(z3&z4);
endmodule
