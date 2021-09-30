Dado('que eu tenho {int} laranjas.') do |valor1|
    @produto=valor1
end
    
Quando('eu como {int} laranjas.') do |valor2|
    @comer=valor2
    @resultado= @produto - @comer
end
    
Então('eu vejo quantas laranjas sobraram.') do
    expect(@resultado).to eq 8
    puts @resultado
end


Quando('eu compro {int} laranjas.') do |valor3|
    @comprar=valor3
    @resultadocompra= @produto+@comprar

end
    
Então('eu vejo quantas laranjas eu tenho agora.') do
    expect(@resultadocompra).to eq 15
    puts @resultadocompra

end