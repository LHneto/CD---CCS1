module HornerScheme (
  input logic signed [31:0] x, // Entrada x
  output logic signed [31:0] result // Resultado da avaliação do polinômio
);
  logic signed [31:0] a[4:0]; // Coeficientes do polinômio

  // Atribua valores aos coeficientes (substitua com os valores reais)
  initial begin
    a[0] = 2;
    a[1] = -3;
    a[2] = 1;
    a[3] = 5;
    a[4] = -4;
  end

  // Implementação do esquema de Horner
  always_comb begin
    result = a[4];
    for (int i = 3; i >= 0; i--) begin
      result = result * x + a[i];
    end
  end

endmodule