module CompteurDecompteurReset(Count, Mode, Reset, Compteur);

input wire Count;
input wire Mode;
input wire Reset;
output wire signed [11:0]Compteur;

reg signed [11:0] InternalCompteur;

always @(negedge Count or posedge Reset) 
begin
	if (Reset == 1)
	begin
		InternalCompteur <= 0;
	end else
	begin
		if (Mode == 1) 
			begin
				InternalCompteur <= InternalCompteur + 1; 
			end
		else
			begin
				InternalCompteur <= InternalCompteur - 1; 
			end
	end	
end

assign Compteur = InternalCompteur;

endmodule

