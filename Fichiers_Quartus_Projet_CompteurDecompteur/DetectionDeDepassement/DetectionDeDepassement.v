module DetectionDeDepassement(Count, Compteurs, CompteursHorsPlage);

input wire Count;
input wire signed[11:0]Compteurs;
output reg CompteursHorsPlage; 

always @(posedge Count) 
begin
    if (Compteurs < 0 || Compteurs > 999) 
        CompteursHorsPlage <= 1; // Indique que le compteur est hors plage
    else 
        CompteursHorsPlage <= 0; // Indique que le compteur est dans la plage
end

endmodule



