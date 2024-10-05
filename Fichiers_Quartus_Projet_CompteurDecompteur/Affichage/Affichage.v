module Affichage(
    input wire count,              // Signal d'horloge
    input signed [11:0]compteur,       // Compteur
    output reg [3:0] unite,      // Chiffre des unités
    output reg [3:0] dizaine,    // Chiffre des dizaines
    output reg [3:0] centaine    // Chiffre des centaines
);
 
 
 always @(posedge count) begin
	if (compteur <= 999 && compteur >= 0) begin
		unite    = compteur % 10;
		dizaine  = (compteur / 10) % 10;
		centaine = (compteur / 100);
	end
	else begin
		if (compteur < 0)
			begin
				unite    = 0;
				dizaine  = 0;
				centaine = 0;
		  end
		  else begin
				unite    = 9;
				dizaine  = 9;
				centaine = 9;
		  end
	  end
end

 
endmodule

